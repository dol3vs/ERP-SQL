
👋 Hi, I’m Dolev — a Project Manager and SQL Server DBA passionate about clean data architecture, performance optimization, and automation.

💾 I work with Microsoft SQL Server to build data pipelines, optimize large-scale ERP integrations, and deliver high-availability systems.

🧠 This repo showcases a two-database SQL Server system I built to:
- Import ERP data
- Normalize and filter through views
- Automate transformation via stored procedures
- Present structured entities for BI and dashboards

🚀 I'm always learning, improving, and building tools that help businesses turn data into action.


# 🧠 ERP Integration System (SQL Server)

This project showcases a two-database architecture designed for importing, processing, and presenting ERP data using Microsoft SQL Server 2022. The system is split into two logical layers: 
**OfficeIntegration** (ETL Layer) and **Office** (Presentation Layer).

---

## 📦 Databases Overview

### 1. `OfficeIntegration`
This database is responsible for importing raw ERP data and preparing it for consumption.

- **Tables**: Store raw ERP data (`Agents`, `Clients`, `Products`, `DocumentsOutMain`, etc.)
- **Views**: Filter and transform ERP data into business entities
- **Stored Procedures**: Automate import processes (e.g. `SP_InsertData`, `SP_AutoImport`)
- **Functions**: Utility calculations and business logic

### 2. `Office`
This is the presentation layer used by BI tools, dashboards, and client applications.

- **Tables**: Final, cleaned data for business users (`Agents`, `Clients`, `Products`, `DocumentsOutMain`, etc.)

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
├── Office/
│   └── schema/                     📂 Tables from Office DB
├── Officeintegration/
│   ├── schema/                     📂 Tables from Officeintegration DB
│   ├── views/                      📂 ERP views
│   ├── procedures/                 📂 Stored procedures
│   └── functions/                  📂 User-defined functions
├── erd/
│   └── Office_erd.dbml             🧭 ERD diagram file (for dbdiagram.io)
├── queries/
│   └── example_queries.sql         🔍 Sample SQL queries

```

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
