# ReCapstone

**ReCapstone** is the official centralized platform for the documentation, collaboration, and publication of Capstone Projects (Final Projects) for **DTETI UGM** students. It serves as a digital hub to streamline the lifecycle of academic innovation—bridging the gap between student research and real-world societal solutions.

## Live Preview

🚀 **Try the live application here:** [https://paw.hilmo.dev](https://paw.hilmo.dev)

## Screenshots

<img width="1920" height="2854" alt="Title-ReCapstone-11-18-2025_09_44_AM" src="https://github.com/user-attachments/assets/e960c68d-0c95-434d-ba53-194d7f3e6b02" />

## Video Demo

Watch a full walkthrough of the platform features:

[![Watch the video](https://img.youtube.com/vi/oBJp7W39-qA/maxresdefault.jpg)](https://youtu.be/oBJp7W39-qA)

> *Click the image above to watch the demo on YouTube.*

## Tech Stack

We utilize a modern, type-safe architecture focused on performance and developer experience.

### **Frontend (Client)**
* **Core:** [React 19](https://react.dev/) (w/ TypeScript), [Vite](https://vitejs.dev/)
* **Routing & State:** [TanStack Router](https://tanstack.com/router), [TanStack Query](https://tanstack.com/query), [Zustand](https://github.com/pmndrs/zustand)
* **Styling:** [Tailwind CSS v4](https://tailwindcss.com/), [Radix UI](https://www.radix-ui.com/) (Primitives), [Lucide React](https://lucide.dev/) (Icons)
* **Forms & Validation:** [React Hook Form](https://react-hook-form.com/), [Zod](https://zod.dev/)
* **Data Visualization:** [TanStack Table](https://tanstack.com/table), [Recharts](https://recharts.org/)
* **Utilities:** @dnd-kit (Drag & Drop), openapi-fetch (Type-safe API client)

### **Backend (Server)**
* **Runtime:** [Node.js](https://nodejs.org/), [Express 5](https://expressjs.com/)
* **Database:** [MongoDB](https://www.mongodb.com/) (via [Mongoose](https://mongoosejs.com/) & Typegoose)
* **Authentication:** Express Session, Argon2, Google Auth Library
* **Storage:** AWS SDK (S3 compatible)
* **Tooling:** [Biome](https://biomejs.dev/) (Linting/Formatting), [Vitest](https://vitest.dev/) (Testing)

## Run Locally

Ensure you have **Node.js** and **npm** installed.

1. **Clone the project**
   ```bash
   git clone https://github.com/PAW-paw-duarr/recapstone.git
   cd recapstone

2.  **Setup Backend**
   
    Create a `.env` file in the `backend` directory based on your configuration.

    ```bash
    cd backend
    npm install
    npm run dev
    ```

4.  **Setup Frontend**
   
    Open a new terminal.

    ```bash
    cd frontend
    npm install
    npm run dev
    ```

The frontend will typically run on `http://localhost:3001` and the backend on the port specified in your env.

## Deployment

The project is containerized for easy deployment. Refer to the compose file for service orchestration.

  * **Docker:** See [compose.yaml](./compose.yaml) for configuration.

## API Reference

The API specification is standardized using OpenAPI.

  * **Spec URL:** [openapi.json](https://github.com/PAW-paw-duarr/openapi/blob/main/openapi.json)
  * **Type Generation:** Frontend types are automatically generated from this spec.

## License

[MIT](https://choosealicense.com/licenses/mit/)

