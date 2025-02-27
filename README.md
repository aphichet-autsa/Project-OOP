# ระบบช่วยในการจ่ายตลาด

**แม่ศรีเรือน: ระบบช่วยในการจ่ายตลาด**

การจ่ายตลาดเป็นกิจกรรมสำคัญทั้งสำหรับผู้ประกอบการและคนทั่วไปที่ต้องบริหารงบประมาณและวางแผนการซื้อสินค้าอย่างมีประสิทธิภาพ อย่างไรก็ตาม วิธีจดบันทึกแบบเดิม เช่น การใช้กระดาษหรือแอพทั่วไป อาจไม่มีฟีเจอร์เฉพาะสำหรับติดตามค่าใช้จ่ายและวิเคราะห์การใช้จ่ายได้อย่างแม่นยำ

**"แม่ศรีเรือน"** ถูกพัฒนาขึ้นเพื่อตอบโจทย์นี้ โดยช่วยให้ผู้ใช้สามารถสร้างและจัดการรายการซื้อสินค้า ควบคุมงบประมาณ และติดตามค่าใช้จ่ายได้อย่างเป็นระบบ ลดความยุ่งยากในการจดบันทึก และเพิ่มประสิทธิภาพในการวางแผนการจ่ายตลาด

**วัตถุประสงค์**
1. เพื่อออกแบบและพัฒนาโปรแกรมการจัดการรายการซื้อสินค้า
2. เพื่อออกแบบการควบคุมและติดตามงบประมาณการจ่ายตลาด
3. เพื่อส่งเสริมทักษะการวางแผนการซื้อสินค้าให้แก่ผู้ใช้
4. เพื่อจัดทำระบบสรุปปค่าใช้จ่ายและจัดหมวดหมู่การใช้จ่ายและติดตามการใช้จ่าย

**เมนูหลักของระบบ**

 - สร้างรายการซื้อสินค้า 
 - จัดการงบประมาณ 
 - ดูสรุปการใช้จ่าย 
 - ประวัติการซื้อ
 - ตั้งค่าผู้ใช้งาน     
 - Input File     
 - เช็ครายการ

**Use Case**
![Image](https://github.com/user-attachments/assets/3e00e90f-7c59-48a8-991a-cef7c359fb33)

**ตัวอย่างโปรแกรม**

![Image](https://github.com/user-attachments/assets/23e25f15-c9a4-4f97-b751-ad4582b6e30f)
![Image](https://github.com/user-attachments/assets/a4efa1ee-9c6e-4f10-b20b-e996d82ad488)
![Image](https://github.com/user-attachments/assets/8fa360cf-8353-4079-a982-90aa3ceb9434)
![Image](https://github.com/user-attachments/assets/02b5a0c8-5703-4472-bdb9-b6a35066b202)
![Image](https://github.com/user-attachments/assets/d2765206-73e6-4231-8cca-e21d0ab7351d)

**ในโปรเจกต์นี้มีการใช้แนวคิดหลักของ Object-Oriented Programming (OOP)** ได้แก่:
1.  **Inheritance** - การสืบทอดคลาสแม่เพื่อให้สามารถใช้งานคุณสมบัติและเมธอดร่วมกัน เช่น **UserManager, CheckSearch, BudgetBase, ListData, และ BaseSearch**
2.  **Polymorphism** - การใช้ **Method Overloading** และ **Method Overriding** เพื่อรองรับการทำงานที่หลากหลาย เช่น **calculateTotal(), search(), saveData(), และ updateBudgetSummary()**
3.  **Encapsulation** - การซ่อนรายละเอียดการทำงานของคลาสและเปิดเผยเฉพาะส่วนที่จำเป็นผ่าน **getter/setter methods**
4.  **Abstraction** - การใช้ **Abstract Class** เพื่อกำหนดโครงสร้างพื้นฐานให้กับคลาสลูก เช่น **CheckBase และ BaseSearch**

