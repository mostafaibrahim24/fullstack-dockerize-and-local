# Fullstack App – Dockerized and Local Environment Setup via Docker Compose
<img width="400" height="235" alt="image" src="https://github.com/user-attachments/assets/576e0e15-5a21-4593-9e01-a8a4da851a38" />


This project is a random fullstack application (React,FastAPI,Postgres) I found on GitHub that originally had several issues and wasn’t containerized.

I fixed the code-level problems I encountered, created Dockerfiles for both the backend and frontend, and identified the environment variables used across the codebase to inject them during container startup.

Since the app uses PostgreSQL as its database, I also set up a PostgreSQL container along with Adminer for simple database administration via a web interface.

Using Docker Compose, the entire stack can now be brought up with a single command—running all services (frontend, backend, database, and Adminer) together for seamless local testing and development.
Command to bring up and build the images:
```
docker compose up --build
```
