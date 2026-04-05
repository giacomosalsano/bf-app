# BeautyFlow (BF) 🚀

A high-performance appointment management system designed for beauty salons. This is a professional-grade study project focused on mastering software architecture, DevOps, and AI integration.

## 🎯 Project Goals
- **Mastery:** Deep dive into NestJS, Next.js 15 (preparing for v16), and TypeScript Strict Mode.
- **Architecture:** Implement SOLID principles, Clean Architecture, and Design Patterns (Singleton, Factory, Observer).
- **Ecosystem:** Transitioning from JavaScript-centric development to a robust Engineering mindset (preparing for Java/Spring Boot concepts).
- **Innovation:** Integration of AI agents for natural language scheduling and business analytics.



## 🏗️ Tech Stack

### Backend (The Core)
- **Framework:** [NestJS](https://nestjs.com/) (Node.js) with Ultra-Strict TypeScript.
- **ORM:** [Drizzle ORM](https://orm.drizzle.team/) for type-safe database interactions.
- **Database:** PostgreSQL 15 (Running via Docker).
- **Architecture:** Modular Domain-Driven Design.

<div align="center" style="display: inline_block justify-center"><br>
  <img src="https://skillicons.dev/icons?i=typescript,react,nextjs,tailwind,postgres,nestjs,docker" alt="icons" /> </div>

### Infrastructure & DevOps
- **Containerization:** Docker & Docker Compose.
- **Environment:** Linux-first approach (Shell scripting for automation).
- **Observability:** (Planned) Structured logging and error tracking.



## 🚀 Getting Started

### Prerequisites
- **Docker Desktop** (or OrbStack).
- **Node.js** (v20+ recommended).
- **NPM** or **PNPM**.

### Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/giacomosalsano/beauty-flow.git](https://github.com/giacomosalsano/beauty-flow.git)
   cd beauty-flow

2. **Infrastructure (Docker):**
  We use a custom verbose script to manage our infrastructure. This ensures the database is healthy before you start developing.
    ```bash
    chmod +x scripts/start-dev.sh
    ./scripts/start-dev.sh
    ```  
  This script will pull the Postgres image, map ports, and wait for the database to be "Ready to Rock".

3. **Backend Setup:** 
  Navigate to the API folder and install dependencies:
    ```bash
    cd apps/api
    npm install
    npm run start:dev
    ````

## 🛠️ Project Structure
```plaintext
beauty-flow/
  ├── apps/
  │   └── api/            # NestJS Backend (The Source of Truth)
  ├── libs/               # Shared logic and types
  ├── scripts/            # Automation and DevOps shell scripts
  ├── tools/              # Development tools and configs
  └── docker-compose.yml  # Main infrastructure definition
```

## ⚖️ License
  This project is for educational purposes under the MIT License.

  _Developed by Giacomo Salsano as part of a growth track._