



### **1. Clients**
- **Phone** and **Chrome** represent user devices or browsers.  
- These clients send requests to the **server** to access or modify data.

### **2. Communication**
- Communication between clients and the server happens through:
  - **GraphQL**
  - **WebAPI / SOAP** (for web services)

### **3. Server**
- The **Saleor Server** handles incoming requests and processes them.  
- It is built using frameworks such as:
  - **Django**
  - **FAST**
  - **.NET**
- The server has an **IP address** (e.g., `google.com`) to identify it on the internet.

### **4. Database**
- The server communicates with the **database** to store and retrieve data.  
- Supported databases include:
  - **Postgres**
  - **MongoDB**
  - **SQL Server**
  - **Oracle**
---

#  Software Design Pattern Overview

## **1. Code Pattern**
Code patterns are **best practices** for writing clean, efficient, and consistent code.

### Examples:
- **DRY (Don’t Repeat Yourself)**  
  Avoid writing duplicate code. Reuse existing functions or modules to reduce redundancy.

- **YAGNI (You Ain’t Gonna Need It)**  
  Don’t add functionality until it’s actually required. Build only what’s needed right now.

---

## **2. Machine**
Represents the **system or platform** on which the code runs — the environment executing the software logic.

---

## **3. Architectural Pattern**
Architectural patterns define the **overall structure** and **organization** of a software system.

### **Domain-Driven Design (DDD)**
DDD focuses on modeling software to match the **business domain** closely.

- **Entities** — Objects with a unique identity (e.g., `User`, `Order`).
- **Value Object** — Objects defined by their attributes, not identity (e.g., `Address`, `Money`).
- **Bounded Context** — A logical boundary where a particular domain model applies, preventing conflicts with other parts of the system.


---



## **1. User Input**
- Users provide input through devices like:
  - **Keyboard**
  - **Voice commands**
- These inputs are sent to the **Operating System** for processing.

---

## **2. Operating System (OS)**
- The OS acts as a **bridge between the user and the hardware**.
- It manages communication and coordinates how different hardware components work together.

---

## **3. Hardware Components**
The OS interacts with the following key components:

- **CPU (Central Processing Unit):** Executes instructions and performs calculations.  
- **RAM (Random Access Memory):** Temporarily stores data and running programs for quick access.  
- **Hard Drive:** Stores system files, software, and user data permanently.

---

## **4. Output**
- After processing user input, the OS sends results back to the **screen** (display).
- This completes the **input → process → output** cycle.

---
# Definitions of Buzzwords / Tech Jargon

## **1. Agentic AI**
**Agentic AI** refers to artificial intelligence systems that can **act autonomously** to achieve goals.  
Unlike traditional AI, which only responds to prompts, agentic AI can:
- Make decisions
- Take actions
- Plan steps toward completing a task  
Example: An AI that can book a flight, send emails, and summarize meetings without step-by-step instructions.

---

## **2. Prompt Engineering**
**Prompt Engineering** is the process of **crafting effective prompts** (questions or instructions) to get the best response from AI models.  
It involves understanding how the AI interprets language and giving it clear, structured input.  
Example: Instead of saying *“Write something about sales,”* a better prompt would be *“Write a 200-word summary about Amazon’s sales strategy for new sellers.”*

---

## **3. Context Engineering**
**Context Engineering** means **designing the environment or information** given to an AI system so it can perform tasks more intelligently.  
It’s about providing the right **background, data, or constraints** that shape how the AI responds.  
Example: Supplying an AI with a company’s sales data before asking it to create a market analysis report.

---







