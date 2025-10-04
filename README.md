# Deploy Guide

## 1) เตรียมเครื่องมือ

* Node.js 18+ และ npm
* MySQL/MariaDB
* ไฟล์ฐานข้อมูล `mikconstruct.sql` สำหรับ import

## 2) ตั้งค่า .env

สร้างไฟล์ `.env` ในรากโปรเจกต์

```
# แอป
PORT=3000
SESSION_SECRET=change_this

# MySQL
DB_HOST=localhost
DB_USER=username
DB_PASSWORD=password
DB_NAME=mikconstruct
DB_PORT=3306
```

## 3) เตรียมฐานข้อมูล

```
mysql -u root -p
> CREATE DATABASE mikconstruct CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
> EXIT;
mysql -u root -p mikconstruct < mikconstruct.sql
```
# MikConstruct Website

เว็บไซต์สำหรับบริษัทก่อสร้าง MikConstruct - จัดการโครงการ แสดงผลงาน และระบบ Admin

## คุณสมบัติหลัก
- ระบบแสดงโครงการก่อสร้าง
- ระบบอัปโหลดรูปภาพ
- ระบบจัดการ Admin
- รองรับ MySQL/MariaDB

---

## Deploy

1. **อัปโหลดโค้ด** ไปยังโดเมนที่ต้องการ (ผ่าน Git หรือ File Manager)
   โครงสร้างโฟลเดอร์แนะนำ:

   ```
   httpdocs/             # เว็ปหลักหรือ static อื่นๆ (ถ้ามี)
   nodeapp/              # โฟลเดอร์โปรเจกต์นี้
     package.json
     .env
     public/
     views/
     app.cjs
     mikconstruct.sql
     ...
   ```
## ติดตั้ง dependencies

หลังจากอัปโหลดโค้ดแล้ว ให้รันคำสั่ง:
```bash
npm install

## เริ่มการทำงานของ website ด้วยคำสั่งต่อไปนี้
node app.cjs

## ตรวจสุขภาพระบบ

* แอปรัน: เปิดโดเมนแล้วเห็นหน้าเว็บ
* อัปโหลดไฟล์ได้: โฟลเดอร์ `public/uploads` ต้องเขียนได้
* DB ต่อสำเร็จ: หน้าเว็บไม่ error เรื่องฐานข้อมูล
