# Project: Online Electronic Store 🛒  

---

## 📌 Project Overview  
The **Online Electronic Store** is a web-based application that allows users to browse and purchase electronic products. The platform provides functionality for both **customers** and **administrators**, enabling a seamless shopping experience.

---

## 🚀 Features  
- **User Registration & Login** (Customers & Admins)  
- **Product Management** (Add, Update, Delete Products)  
- **Customer Dashboard** (Browse & Purchase Products)  
- **Admin Panel** (Manage Users & Orders)  
- **Secure Authentication System**  
- **Responsive Web Design**  

---

## 🏗️ Technologies Used  
- **Frontend:** HTML, CSS, JavaScript  
- **Backend:** Java (J2EE, Servlets, JSP)  
- **Database:** Oracle SQL (PL/SQL)  
- **IDE:** Eclipse  
- **Version Control:** Git & GitHub  

---


## 1. Product Table
```
CREATE TABLE product (
    PCODE VARCHAR2(25) PRIMARY KEY,
    PNAME VARCHAR2(25),
    PCOMPANY VARCHAR2(25),
    PPRICE VARCHAR2(25),
    PQTY VARCHAR2(25)
);
```
---

## 2. Registration Table
```
CREATE TABLE registration (
    USERNAME VARCHAR2(25) PRIMARY KEY,
    PASSWORD VARCHAR2(25),
    FIRSTNAME VARCHAR2(25),
    LASTNAME VARCHAR2(25),
    MAILID VARCHAR2(25),
    PHONE VARCHAR2(20)
);
```
---

## 3. Admin Table
```
CREATE TABLE admin (
    UNAME VARCHAR2(25) PRIMARY KEY,
    PWORD VARCHAR2(25),
    FNAME VARCHAR2(25),
    LNAME VARCHAR2(25),
    ADDR VARCHAR2(25),
    MID VARCHAR2(25),
    PHNO VARCHAR2(25)
);
```
---

## 4. Customer Table
```
CREATE TABLE customer (
    UNAME VARCHAR2(25) PRIMARY KEY,
    PWORD VARCHAR2(25),
    FNAME VARCHAR2(25),
    LNAME VARCHAR2(25),
    ADDR VARCHAR2(25),
    MID VARCHAR2(25),
    PHNO VARCHAR2(25)
);
```
---

# Author
Mihir Lohakare
**mihirlohakare@gmail.com**

---

# License
This project is licensed under the [MIT] License - see the LICENSE.md file for details