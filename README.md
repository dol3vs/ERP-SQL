


# 🧠 ERP Integration System (SQL Server)
👋 Hi, I’m Dolev — a SQL Server Developer and Project Coordinator with a passion for building practical, real-world data systems.

💾 This project demonstrates a two-database architecture built to solve a common business challenge: making ERP data accessible, actionable, and performance-optimized for daily business use.

🔍 The system:
- Connects to raw ERP sources via views and APIs
- Filters, transforms, and normalizes the data
- Automates loading and updates using stored procedures
- Delivers clean entities ready for reporting, dashboards, and client apps

💡 It’s the foundation behind mobile dashboards, web portals, and business tools used by real clients.
🚀 I'm always learning, improving, and building tools that help businesses turn data into action.

---

## 🗂️ Databases Overview

### 1. `ERP` – Raw External Source
This database simulates the external ERP system. It contains raw, unfiltered business data such as:
- Clients, Agents, Products, Orders
- Original ERP document tables and fields
- Used only for import into OfficeIntegration

### 2. `OfficeIntegration` – ETL Layer
Responsible for pulling and transforming ERP data:
- Connects to ERP or flat-file sources via views or APIs
- Filters and normalizes data using SQL Server views
- Contains stored procedures and functions for transformation logic
- Outputs clean entities to be inserted into the Office DB

### 3. `Office` – Presentation Layer
This is the final destination for clean, structured business data:
- Contains tables ready for use by BI dashboards, apps, or reports
- No transformation logic — only clean data from OfficeIntegration
- Drives dashboards and mobile access for clients

- ## 🌐 API Integration Procedures

This system includes stored procedures that handle data exchange with external services using SQL Server’s built-in capabilities.

### 📤 `SP_SendDataToAPI`
A stored procedure that sends transformed data (e.g., clients or documents) to an external system using HTTP `POST`.

- Uses `sp_OACreate`, `sp_OAMethod`, and `sp_OASetProperty` for native SQL HTTP calls
- Sends JSON payloads formatted from ERP or integration tables
- Logs response status and error handling to a custom logging table

### 📥 `SP_ImportFromAPI`
Fetches external data (e.g., delivery status, prices, or user details) via HTTP `GET` or `POST`.

- Consumes external API endpoints using built-in SQL tools
- Parses JSON into temporary or staging tables for processing
- Can be scheduled with SQL Server Agent

These procedures are typically used in the `OfficeIntegration` database and are part of the automated flow that keeps external data synced with the local ERP model.

---

## 🛠️ Technologies Used

- Microsoft SQL Server 2022
- T-SQL (views, stored procedures, functions, tables)
- SQL Server Agent & Profiler
- API (GET/POST) data integration
- Entity-Relationship Design

---

## 📁 Project Structure

```

Office-integration-sql/
├── README.md                       ✅ Project overview
├── erp/
│   └── schema/                     📂 Tables from ERP DB
├── Office/
│   └── schema/                     📂 Tables from Office DB
├── Officeintegration/
│   ├── views/                      📂 ERP views
│   ├── procedures/                 📂 Stored procedures
│   └── functions/                  📂 User-defined functions
├── erd/
│   └── Office_erd.dbml             🧭 ERD diagram file (for dbdiagram.io)
├── queries/
│   └── example_queries.sql         🔍 Sample SQL queries


```

---

## 🧩 Entity-Relationship Diagram

Visual schema (click to view):  
📌 **ERD Diagram** – [Open on dbdiagram.io](https://dbdiagram.io/d/ERP-SQL-67eced264f7afba1840ceac6)
➡️ Or paste from: [`erd/office_erd.dbml`](./erd/office_erd.dbml)

![ERD Diagram](https://github.com/user-attachments/assets/4992fb8a-4c20-4f6f-b34a-4ea77e5cc304)

---

## 🔍 Example SQL Queries

Some sample queries from the project: [`queries/example_queries.sql`](./queries/example_queries.sql)

---

## 🧪 Example Use Cases

- Import ERP stock, clients, and orders
- Normalize and filter data through views
- Generate structured entities for Office
- Automate import processes via stored procedures
- Use Office tables for reporting and dashboards

---

## 🚀 How to Use

1. Open SQL Server Management Studio (SSMS)
2. Execute scripts in `/Officeintegration` to create integration layer
3. Execute scripts in `/Office` to create the final layer
4. Run views or procedures to simulate the data flow

---

## 👨‍💻 Author

**Dolev Sivan**  
Database Developer & IT Support Specialist  
[LinkedIn](https://www.linkedin.com/in/dol3vs)

---

## 💡 Resume

You can view or download my CV here:  
👉 [Dolev Sivan CV](docs/Dolev_Sivan_CV.pdf)

---

## 📄 License

This project is part of a educational and professional portfolio. 
All content is for demonstration purposes only.
