# 🎟️ Ticket Resale Application  
### Spring Boot | JSP | JPA | Bootstrap | MySQL

A **full-stack Ticket Resale Web Application** built using **Spring Boot** that simulates a real-world movie ticket marketplace.  
The system allows users to **browse tickets, purchase them**, and view **personal profile analytics** like earnings and ticket history.

This project is designed to demonstrate **clean backend architecture**, **business logic**, and **industry-level Git & security practices**.

---

## 🔥 Why This Project?

Most beginner projects stop at basic CRUD operations.  
This application goes further by implementing:

- Seller–buyer workflow
- Ticket quantity management
- Purchase history tracking
- Earnings calculation
- Profile dashboard
- Secure GitHub practices (no secrets committed)

👉 Built to reflect **real-world backend development**.

---

## ✨ Key Features

### 🔐 Authentication
- User login using username & password
- Role selection screen (Admin / User / Profile)

### 👨‍💼 Admin (Seller)
- Add movie tickets
- Set ticket price & quantity
- View all tickets
- Earn money when tickets are sold

### 👤 User (Buyer)
- Browse available movie tickets
- Buy tickets (quantity updates automatically)

### 👤 My Profile (Analytics)
- 💰 Total earnings
- 🎬 Tickets sold
- 🎟️ Tickets purchased
- Clean and responsive Bootstrap UI

---

## 🧠 Core Concepts Implemented

- MVC Architecture (Controller → Service → Repository)
- Entity relationships using JPA & Hibernate
- Business logic in service layer
- JSP pages without JSTL (scriptlet-based rendering)
- GitHub Push Protection & secret handling
- Incremental system design

---

## 🛠️ Tech Stack

| Layer        | Technology |
|-------------|------------|
| Backend     | Spring Boot, Spring MVC |
| Frontend    | JSP, Bootstrap 5 |
| ORM         | Hibernate (JPA) |
| Database    | MySQL |
| Build Tool  | Maven |
| Versioning  | Git & GitHub |

---

## 📂 Project Structure

src/main/java/com/burugula/ticketresale
├── controller
│ ├── AdminController
│ ├── UserController
│ ├── LoginController
│ ├── RoleController
│ └── ProfileController
│
├── model
│ ├── User
│ ├── Ticket
│ └── Order
│
├── repository
│ ├── UserRepository
│ ├── TicketRepository
│ └── OrderRepository
│
├── service
│ ├── UserService
│ ├── TicketService
│ ├── OrderService
│ └── PriceService
│
src/main/webapp/WEB-INF/views
├── login.jsp
├── role-select.jsp
├── admin.jsp
├── user.jsp
└── profile.jsp





### Clone the repository

git clone https://github.com/Burugula2006/TicketResaleApplication.git



## 🧪 **Sample Application Flow**

- **Login**  
- **Choose role** *(Admin / User / Profile)*  
- **Admin adds tickets**  
- **User buys tickets**  
- **Profile page shows earnings & ticket history**

## 🧠 Learning Outcomes

- Designed a layered Spring Boot MVC application
- Implemented real-world seller–buyer business logic
- Managed relational data using JPA & Hibernate
- Built dynamic JSP pages without JSTL
- Practiced secure GitHub workflows and secret handling


## 🔮 **Future Enhancements**

- **Session-based authentication** for secure user login  
- **Role-based authorization** (Admin / User access control)  
- **Prevent users from buying their own tickets**  
- **Earnings analytics with graphs & charts**  
- **REST APIs** with **React frontend** integration  
- **Cloud deployment** on **AWS / Render**


## 👨‍💻 **Author**

**Burugula Raghavendra**  
**Java | Spring Boot | Backend Development**

📌 **Passionate about building scalable backend systems**  
📌 **Focused on clean architecture & real-world business logic**
