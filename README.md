# 🧠 ERP Integration System (SQL Server)

🔍 The system:
- Connects to raw ERP sources via views and APIs
- Filters, transforms, and normalizes the data
- Automates loading and updates using stored procedures
- Delivers clean entities ready for reporting, dashboards, and client apps

💡 It’s the foundation behind mobile dashboards, web portals, and business tools used by real clients.
🚀 I'm always learning, improving, and building tools that help businesses turn data into action.

---

## 🗂️ Databases Overview

### 1. `Demo_ERP` – Raw External Source
This database simulates the external ERP system. It contains raw, unfiltered business data such as:
- Clients, Agents, Products, Orders
- Original ERP document tables and fields
- Used only for import into OfficeIntegration

### 2. `DEMO_Integration` – ETL Layer
Responsible for pulling and transforming ERP data:
- Connects to ERP or flat-file sources via views or APIs
- Filters and normalizes data using SQL Server views
- Contains stored procedures and functions for transformation logic
- Outputs clean entities to be inserted into the Office DB

### 3. `DEMO` – Presentation Layer
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
- Git / GitHub

---

## 📁 Project Structure

- **demo_erp/** – Simulates raw ERP tables and sample data
- **demo_integration/** – Contains views, stored procedures, and functions
- **demo/** – Final cleaned tables used for dashboards and reporting
- **erd/** – Entity-Relationship Diagrams (Markdown + Images)
- **docs/** – Architecture and workflow explanations

```

ERP-SQL/
├── README.md
├── LICENSE
├── .gitignore
├── erd/
│   ├── erd_demo_erp.md
│   ├── erd_demo_integration.md
│   ├── erd_demo.md
│   └── images/
│       ├── erd_demo_erp.png
│       ├── erd_demo_integration.png
│       └── erd_demo.png
├── demo_erp/                # Raw external source
│   ├── tables/
│   │   └── create_clients.sql
│   └── sample_data/
│       └── insert_clients.sql
├── demo_integration/        # ETL Layer
│   ├── views/
│   │   └── vw_clients_clean.sql
│   ├── procedures/
│   │   └── usp_import_clients.sql
│   └── functions/
│       └── fn_standardize_phone.sql
├── demo/                    # Presentation Layer
│   ├── tables/
│   │   └── create_clients_final.sql
│   └── indexes/
│       └── idx_clients_id.sql
└── docs/
    └── architecture.md


```

---

## 🧩 Entity-Relationship Diagram

This project includes DBML files to visualize the structure of each database using dbdiagram.io.

🔹 View ERDs Online
You can import these files directly into https://dbdiagram.io to see the schema visually:

Demo_ERP	demo_erd.dbml
DEMO_Integration	demo_integration.dbml
DEMO (Presentation)	demo.dbml

🛠 How to Use
Go to https://dbdiagram.io

Click "New Diagram"

Upload or paste the contents of the .dbml file

Explore relationships and export as PNG, PDF, or SQL

![Untitled](https://github.com/user-attachments/assets/e7828ce2-b4b3-40d0-b8eb-4dd2dc303c38)

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
2. Execute scripts in `/demo_integration` to create integration layer
3. Execute scripts in `/demo` to create the final layer
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

### 🔐 Disclaimer
All data is fictional and for demonstration only. No proprietary, personal, or sensitive information is included.

---

## 📝 License
MIT License

