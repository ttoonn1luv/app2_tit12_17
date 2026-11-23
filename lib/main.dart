import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // ส่วนหัวหน้าแอป
        title: const Text('bellingham'), // หัวข้อ
        leading: const Icon(Icons.home), // ซ้าย
        actions: const [ // ขวา
          Icon(Icons.notification_add),
          Icon(Icons.menu),
        ],
      ),
      body: SingleChildScrollView( // ครอบ SingleChildScrollView ป้องกันหน้าจอล้น
        child: Column(
          children: [
            const Text("Hello"),
            const Text("Hello"),
            Text(
              "Hello",
              style: TextStyle( // ตกแต่งข้อความ
                color: Colors.pink, // สีอักษร
                backgroundColor: Colors.yellow[300], // สีพื้นหลัง
                fontSize: 40, // ขนาด
                fontWeight: FontWeight.w900, // ความหนาเส้นอักษร
              ),
            ),
            const Row(
              children: [
                Icon(
                  Icons.sunny,
                  color: Colors.deepOrange, // สีไอคอน
                  size: 60, // ขนาด
                ),
                Icon(Icons.monetization_on, size: 40),
                Icon(Icons.cloud, size: 40),
              ],
            ),
            Row(
              children: [
                Image.asset( // ภาพจากไฟล์ในโปรเจกต์
                  "assets/Doraemon.png",
                  width: 150, // กว้าง
                  height: 150, // สูง
                  fit: BoxFit.cover, // ภาพเต็มกรอบ
                ),
                ClipOval( // ทำให้ภาพเป็นวงกลม
                  child: Image.network( // ภาพจากลิงก์
                    "https://discovery.sndimg.com/content/dam/images/discovery/fullset/2022/1/31/GettyImages-467491721.jpg.rend.hgtvcom.1280.1280.suffix/1643651771303.jpeg",
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton( // ปุ่มทึบ
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange, // สีพื้นหลัง
                    foregroundColor: Colors.white, // สีข้อความ, ไอคอน
                  ),
                  child: const Text("ปุ่ม 1"),
                ),
                const SizedBox( // เว้นช่องว่าง
                  width: 20, // เว้นแนวนอน
                  height: 100, // เว้นแนวตั้ง
                ),
                Expanded( // ขยาย
                  child: OutlinedButton( // ปุ่มมีเส้นขอบ
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent[50],
                      foregroundColor: Colors.blueAccent,
                    ),
                    child: const Text("ปุ่ม 2"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}