
👋 Hi, I’m Dolev — a Project Manager and SQL Server DBA passionate about clean data architecture, performance optimization, and automation.

💾 I work with Microsoft SQL Server to build data pipelines, optimize large-scale ERP integrations, and deliver high-availability systems.

🧠 This repo showcases a two-database SQL Server system I built to:
- Import ERP data
- Normalize and filter through views
- Automate transformation via stored procedures
- Present structured entities for BI and dashboards

🚀 I'm always learning, improving, and building tools that help businesses turn data into action.


# 🧠 ERP Integration System (SQL Server)

This project showcases a two-database architecture designed for importing, processing, and presenting ERP data using Microsoft SQL Server 2022. The system is split into two logical layers: **OfficeIntegration** (ETL Layer) and **Office** (Presentation Layer).

---

## 📦 Databases Overview

### 1. `OfficeIntegration`
This database is responsible for importing raw ERP data and preparing it for consumption.

- **Tables**: Store raw ERP data (`Agents`, `Clients`, `Products`, etc.)
- **Views**: Filter and transform ERP data into business entities
- **Stored Procedures**: Automate import processes (e.g. `SP_InsertData`, `SP_AutoImport`)
- **Functions**: Utility calculations and business logic

### 2. `Office`
This is the presentation layer used by BI tools, dashboards, and client applications.

- **Tables**: Final, cleaned data for business users (`Clients`, `Activities`, `DocumentsOutMain`, etc.)

---

## 🛠️ Technologies Used

- Microsoft SQL Server 2022
- T-SQL (Views, Stored Procedures, UDFs)
- Entity-Relationship Design
- Manual ETL Logic via Stored Procedures and Views

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
│   └── example_reports.sql         🔍 Sample SQL queries

```

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

## 📄 License

This project is for educational and professional portfolio use.
