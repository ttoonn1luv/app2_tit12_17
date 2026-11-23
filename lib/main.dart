import 'package:flutter/material.dart';

void main() {
  // จุดเริ่มต้นการทำงานของแอป Flutter
  runApp(const MyApp());
}

// Widget หลักของแอปพลิเคชัน (Root Widget)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // กำหนดธีมและโทนสีหลักของแอป
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(), // หน้าแรกที่จะเปิดขึ้นมา
    );
  }
}

// หน้าแรกของแอปพลิเคชัน
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // แถบด้านบนของหน้าจอ (AppBar)
      appBar: AppBar(
        title: const Text('หน้าแรก'), // ข้อความหัวเรื่องบน AppBar
      ),
      // ส่วนเนื้อหาหลัก จัดวางองค์ประกอบในแนวตั้งด้วย Column
      body: Column(
        children: [
          // 1. ข้อความธรรมดา (ใช้ขนาดและสีเริ่มต้น)
          const Text("Hello"),

          // 2. ข้อความปรับขนาดและความหนา
          const Text(
            "Hello",
            style: TextStyle(
              fontSize: 20.0,              // fontSize: กำหนดขนาดตัวอักษร
              fontWeight: FontWeight.bold, // fontWeight: กำหนดความหนาตัวอักษร (bold = ตัวหนา)
            ),
          ),

          // 3. ข้อความปรับสี ขนาด ความหนา และสีพื้นหลัง
          Text(
            "Hello",
            style: TextStyle(
              color: Colors.pink,                  // color: กำหนดสีตัวอักษร (สีชมพู)
              backgroundColor: Colors.yellow[300], // backgroundColor: สีพื้นหลังข้อความ (ใช้ [300] แทน (300))
              fontSize: 24.0,                      // fontSize: กำหนดขนาดตัวอักษร
              fontWeight: FontWeight.w600,         // fontWeight: ความหนาตัวอักษร (w100 - w900)
            ),
          ),

          // 4. จัดวางองค์ประกอบในแนวนอนด้วย Row
          const Row(
            children: [
              Icon(Icons.sunny),           // Icon: ไอคอนรูปพระอาทิตย์
              Icon(Icons.monetization_on), // Icon: ไอคอนรูปเหรียญ
              Icon(Icons.cloud),           // Icon: ไอคอนรูปก้อนเมฆ
            ],
          ),
          // 5. แสดงรูปภาพจาก assets และรูปภาพจากอินเทอร์เน็ต (Image.network) แบบวงกลม
          Row(
            children: [
              // 5.1 รูปภาพจากไฟล์ในโปรเจกต์ (Image.asset)
              Image.asset(
                "assets/Doraemon.png",
                width: 150,        // width: กำหนดความกว้างรูปภาพ (150px)
                height: 150,       // height: กำหนดความสูงรูปภาพ (150px)
                fit: BoxFit.cover, // fit: ขยายรูปภาพเต็มกรอบโดยรักษาอัตราส่วน
              ),

              // 5.2 รูปภาพจากอินเทอร์เน็ต (Image.network) แบบวงกลมด้วย ClipOval
              ClipOval(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwJeVkpGFJg6cJ7lX_XibbYsSz863BqFcXmMuOX8VVXWpxPWKsq8neC28&s=10", // URL รูปภาพบนเว็บ
                  width: 150,        // กำหนดความกว้างรูปภาพ (150px)
                  height: 150,       // กำหนดความสูงรูปภาพ (150px)
                  fit: BoxFit.cover, // ขยายรูปภาพเต็มวงกลมพอดี
                ),                   // วงเล็บปิด Image.network
              ),                     // วงเล็บปิด ClipOval
            ],
          ),

          // 6. ปุ่มกดด้วย ElevatedButton
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},    // onPressed: ฟังก์ชันเมื่อกดปุ่ม
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,  // backgroundColor: สีพื้นหลังปุ่ม (สีฟ้า)
                  foregroundColor: Colors.white, // foregroundColor: สีตัวอักษรบนปุ่ม (สีขาว)
                ),
                child: const Text("Button1"),    // child: แสดงข้อความบนปุ่ม
              ),
              SizedBox(
                width: 10,
                height: 100,
              )
            ],
          ),
        ],
      ),
    );
  }
}