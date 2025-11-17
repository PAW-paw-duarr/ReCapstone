FROM node:22-alpine AS backend-builder

ENV HUSKY=0

WORKDIR /app

COPY ./backend/package.json /app/package.json
COPY ./backend/package-lock.json /app/package-lock.json
RUN npm i

COPY ./backend /app/
RUN npm run build

RUN npm prune --production

FROM node:22-alpine AS frontend-builder-deps

ENV HUSKY=0

COPY ./frontend/package.json ./frontend/package-lock.json /app/
WORKDIR /app
RUN npm ci --omit=dev
RUN npm install vite-tsconfig-paths

FROM node:22-alpine AS frontend-builder
COPY ./frontend /app/
COPY --from=frontend-builder-deps /app/node_modules /app/node_modules
WORKDIR /app
RUN npm run build

FROM node:22-alpine
WORKDIR /app

COPY --from=backend-builder /app/node_modules /app/node_modules
COPY --from=backend-builder /app/dist /app/dist
COPY --from=frontend-builder /app/dist /app/build/client

EXPOSE 3000

CMD ["node", "dist/index.js"]