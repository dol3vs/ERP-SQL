# 📦 API Integration Examples

This document contains example JSON payloads used in the API integration stored procedures.

---

## 📤 Sent by `SP_SendDataToAPI`

### Example Payload: Clients (HTTP POST)

```json
[
  {
    "ClientID": 100,
    "ClientName": "John Doe",
    "Email": "john.doe@example.com"
  },
  {
    "ClientID": 101,
    "ClientName": "Jane Smith",
    "Email": "jane.smith@example.com"
  }
]
```

### SQL Query used:
```sql
SELECT ClientID, ClientName, Email
FROM DEMO_Integration.dbo.vw_Clients_Clean
FOR JSON AUTO
```

### Wrapped with a Root Element:
```sql
SELECT ClientID, ClientName, Email
FROM DEMO_Integration.dbo.vw_Clients_Clean
FOR JSON AUTO, ROOT('Clients')
```

**Produces:**
```json
{
  "Clients": [
    { "ClientID": 100, "ClientName": "John Doe", "Email": "john@example.com" }
  ]
}
```

---

## 📥 Received by `SP_ImportFromAPI`

### Example Payload: Delivery Status (HTTP GET)

```json
[
  {
    "StatusID": 1,
    "StatusName": "Shipped",
    "UpdatedAt": "2024-12-01T14:23:00"
  },
  {
    "StatusID": 2,
    "StatusName": "Delivered",
    "UpdatedAt": "2024-12-02T10:17:00"
  }
]
```

### JSON Parser SQL:
```sql
SELECT *
FROM OPENJSON(@ResponseText)
WITH (
  StatusID INT,
  StatusName NVARCHAR(100),
  UpdatedAt DATETIME
);
```

---

## 📚 Logging Format

Every API call response is saved to:

```sql
INSERT INTO DEMO_Integration.dbo.ApiLog (Endpoint, Payload, ResponseText, CreatedAt)
```

This allows for full traceability of API interactions.