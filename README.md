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

```
ERP-SQL/
├── demo_erp/             -- Raw ERP source tables and sample data
├── demo_integration/     -- Views, procedures, and transformation logic
├── demo/                 -- Final clean tables for reporting and BI
├── erd/                  -- ER diagrams in .dbml format for dbdiagram.io
├── docs/                 -- Documentation (API examples, architecture)
├── powershell_scripts/   -- PowerShell alternatives for API calls
│   ├── Import-DataFromAPI.ps1
│   ├── Send-ClientDataToAPI.ps1
│   └── tests/
│       ├── Test-Import-DataFromAPI.Tests.ps1
│       └── Test-Send-ClientDataToAPI.Tests.ps1
├── tests/
│    └── Test_usp_GenerateClientOrderSummary.sql
└── .github/
    └── workflows/
        └── ci.yml

```

---

## 📐 Entity-Relationship Diagrams (ERDs)

ERD files in `.dbml` format are available for all database layers. You can view them on [dbdiagram.io](https://dbdiagram.io).

📁 **Browse all ERD files:**  
👉 [ERP-SQL/erd](https://github.com/dol3vs/ERP-SQL/tree/main/erd)

### ERD Files
| Database           | File Name                  |
|--------------------|----------------------------|
| Demo_ERP           | [`demo_erd.dbml`](https://github.com/dol3vs/ERP-SQL/blob/main/erd/demo_erd.dbml) |
| DEMO_Integration   | [`demo_integration.dbml`](https://github.com/dol3vs/ERP-SQL/blob/main/erd/demo_integration.dbml) |
| DEMO (Presentation)| [`demo.dbml`](https://github.com/dol3vs/ERP-SQL/blob/main/erd/demo.dbml) |


![Untitled](https://github.com/user-attachments/assets/e7828ce2-b4b3-40d0-b8eb-4dd2dc303c38)


---

## 🚀 How to Use This Repo

### ✅ Requirements
- SQL Server (Developer or Express)
- SSMS (SQL Server Management Studio)
- PowerShell 5+ with `SqlServer` module (optional for API)

### ⚙️ Setup Steps

1. Clone this repo  
   ```bash
   git clone https://github.com/dol3vs/ERP-SQL.git
   ```

2. Create databases in SSMS:
   - `Demo_ERP`
   - `DEMO_Integration`
   - `DEMO`

3. Run the SQL scripts in order:
   - `demo_erp/` → Create tables & insert sample data
   - `demo_integration/` → Create views, procedures, functions, API log
   - `demo/` → Create reporting tables and indexes

---

## 📘 Example Use Cases

### 🧾 1. Sync Client Master Data to External Systems
- Send data from `vw_Clients_Clean` to external CRM via `SP_SendDataToAPI`.

### 📦 2. Import Delivery Status from External API
- Fetch live order status with `SP_ImportFromAPI` into a temp table.

### 📊 3. Generate Sales Metrics
- Use `vw_ProductSales` to load summarized data into `ProductSales` for reporting.

### 👥 4. Calculate Client Lifetime Value
- `usp_GenerateClientOrderSummary` loads `ClientOrderSummary` for BI insights.

### 🔁 5. Automate API Jobs Nightly
- Use SQL Server Agent to run PowerShell or stored procedures on a schedule.

---

## 👨‍💻 Author

**Dolev Sivan**  
SQL Server Database Manager | Solutions Developer | ERP & App Integration Expert   
👉 [LinkedIn](https://www.linkedin.com/in/dol3vs)

---

## 💡 Resume

You can view or download my CV here:  
👉 [Dolev Sivan CV](docs/Dolev_Sivan_CV.pdf)

---

## 📜 Contributing

We welcome contributions from the community! See [CONTRIBUTING.md](CONTRIBUTING.md) for more information.

---

## 📜 Code of Conduct

Please note that this project adheres to a [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

---

### 🔐 Disclaimer
All data is fictional and for demonstration only. No proprietary, personal, or sensitive information is included.

Made with ☕ and SQL by @dol3vs
