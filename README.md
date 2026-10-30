# 🏨 Hotel Management System | DBMS Project

## 📌 Project Overview

The **Hotel Management System** is a database-driven academic project developed using **MySQL** to organize and manage essential hotel operations.

The project focuses on maintaining structured records of guests, rooms, reservations, staff, billing, and inventory. It demonstrates how relational databases can be used to store, retrieve, update, and analyze hotel-related information efficiently.

## 🎯 Objectives

- Design a structured relational database for hotel operations.
- Maintain guest information and reservation records.
- Track room availability, types, and pricing.
- Manage staff details and responsibilities.
- Store billing information and payment statuses.
- Monitor hotel inventory and stock levels.
- Demonstrate SQL queries, joins, subqueries, and aggregate functions.
- Apply database normalization and integrity constraints.

## 🗄️ Database Structure

The database, `hotelmanagementdb`, consists of **six main tables**.

| Table | Description |
|---|---|
| **Guests** | Stores guest IDs, names, contact details, and cities. |
| **Rooms** | Maintains room numbers, types, prices, and availability statuses. |
| **Reservations** | Records bookings, assigned rooms, guests, staff, check-in/check-out dates and times, and booking statuses. |
| **Staff** | Stores employee details, job roles, contact information, and salaries. |
| **Bills** | Maintains reservation billing, payment amounts, methods, and payment statuses. |
| **Inventory** | Tracks hotel supplies, available quantities, units, and reorder levels. |

## 🔗 Database Relationships

The system uses relational database concepts to connect information across different tables.

- **Guests → Reservations:** A guest can have multiple reservations.
- **Rooms → Reservations:** A room can be associated with multiple reservations over time.
- **Staff → Reservations:** Staff members can be assigned to manage reservations.
- **Reservations → Bills:** Billing records are associated with reservations.

Primary keys uniquely identify records, while foreign keys establish relationships between related tables.

## ⚙️ Key Features

### 1. Guest Management
Stores guest information such as name, phone number, email address, and city.

### 2. Room Management
Maintains room categories, room rates, and availability information.

### 3. Reservation Management
Tracks guest bookings, room allocation, assigned staff, booking status, and check-in/check-out details.

### 4. Billing Management
Stores payment amounts, payment methods, billing dates, and payment statuses.

### 5. Staff Management
Maintains staff information, job roles, contact details, and salaries.

### 6. Inventory Management
Monitors essential hotel supplies and identifies items that need restocking.

## 💻 Technologies Used

| Technology | Purpose |
|---|---|
| MySQL | Relational Database Management System |
| SQL | Database creation, manipulation, and querying |
| MySQL Command-Line Client | Executing SQL commands and viewing results |

## 🧠 DBMS Concepts Demonstrated

The project demonstrates several fundamental DBMS concepts:

- Relational database design
- Primary keys and foreign keys
- Data Definition Language (DDL)
- Data Manipulation Language (DML)
- SQL joins
- Nested queries and subqueries
- Aggregate functions (`COUNT`, `SUM`, `AVG`)
- `GROUP BY` and `ORDER BY`
- Filtering using `WHERE`
- Database normalization
- Data integrity and relationships

## 📊 Sample SQL Queries

**1. Display available rooms**

```sql
SELECT room_number, room_type, price_per_night
FROM Rooms
WHERE room_status = 'Available';
```

**2. Display reservation details with guest names**

```sql
SELECT
    r.reservation_id,
    g.full_name,
    rm.room_number,
    r.check_in,
    r.check_out,
    r.booking_status
FROM Reservations r
JOIN Guests g ON r.guest_id = g.guest_id
JOIN Rooms rm ON r.room_id = rm.room_id;
```

**3. Calculate total paid revenue**

```sql
SELECT SUM(amount) AS total_paid_revenue
FROM Bills
WHERE payment_status = 'Paid';
```

**4. Display items requiring restocking**

```sql
SELECT item_name, quantity, reorder_level
FROM Inventory
WHERE quantity <= reorder_level;
```

## 🚀 Getting Started

### Prerequisites

- MySQL Server
- MySQL Command-Line Client or MySQL Workbench

### Steps

**1. Clone the repository**

```bash
git clone https://github.com/sruthi-r-22/Hotel-Management-System-DBMS.git
```

**2. Navigate to the project directory**

```bash
cd Hotel-Management-System-DBMS
```

**3. Log in to MySQL**

```bash
mysql -u root -p
```

**4. Create and select the database**

```sql
CREATE DATABASE IF NOT EXISTS hotelmanagementdb;
USE hotelmanagementdb;
```

**5. Set up the tables and sample data**

Refer to the project documentation for the database schema and sample records. Create and populate the required tables before executing the demonstration queries.

**6. Execute SQL queries**

```sql
SHOW TABLES;

SELECT * FROM Guests;
SELECT * FROM Rooms;
SELECT * FROM Reservations;
SELECT * FROM Staff;
SELECT * FROM Bills;
SELECT * FROM Inventory;
```

> **Note:** The included `hotel_management.sql` file contains recorded MySQL commands and outputs. It is not a directly executable database initialization script.

## 📁 Repository Structure

```text
Hotel-Management-System-DBMS/
│
├── README.md
│
├── hotel_management.sql
│
└── DBMS PROJECT editedfinal.pdf
```

- **README.md** — Project overview and setup instructions.
- **hotel_management.sql** — SQL query demonstrations and recorded outputs.
- **DBMS PROJECT editedfinal.pdf** — Detailed academic project documentation.

## 📚 Project Documentation

The complete project report includes:

1. Introduction
2. Requirement Analysis
3. ER Diagram
4. Database Implementation
5. SQL Queries and Outputs
6. Database Normalization

📄 [View Project Documentation](DBMS%20PROJECT%20editedfinal.pdf)

## 🎓 Academic Information

**Project Title:** Hotel Management System  
**Subject:** Database Management Systems (DBMS)  
**Department:** Computer Science and Engineering (Artificial Intelligence & Machine Learning)  
**Institution:** BVRIT Hyderabad College of Engineering for Women  
**Project Type:** Academic Group Project

## 🔮 Future Enhancements

The database can be extended with:

- A web-based interface for hotel administration.
- Automated room booking and cancellation.
- User authentication and role-based access.
- Automated invoice generation.
- Real-time room availability tracking.
- Reports and analytics dashboards.

## 📜 Conclusion

The Hotel Management System demonstrates the practical application of relational database concepts in managing hotel operations.

By organizing guest records, reservations, rooms, staff, billing, and inventory into related tables, the project illustrates how MySQL can support efficient data management, retrieval, and reporting.

---

**Developed as part of the Database Management Systems academic coursework.**
