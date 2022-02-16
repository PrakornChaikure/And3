import 'package:flutter/material.dart';
import 'foodMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        home: MyHomePage(),
        theme: ThemeData(primarySwatch: Colors.blueGrey));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<foodMenu> menu = [
    foodMenu("ผัดพริกป่นราดข้าว", "40", "assets/images/1.jpg"),
    foodMenu("ข้าวผัดไข่หมูแดดเดียว", "50", "assets/images/7.jpg"),
    foodMenu("ผัดไข่ข้าว", "55", "assets/images/2.jpg"),
    foodMenu("หมูแดดผัดข้าว", "60", "assets/images/7.jpg"),
    foodMenu("ข้าวผัดหมูแดด", "65", "assets/images/7.jpg"),
    foodMenu("กุ้งชุบแป้งทอด", "70", "assets/images/6.jpg"),
    foodMenu("ปูชุบแป้งทอด", "75", "assets/images/3.jpg"),
    foodMenu("ปลาชุบแป้งทอด", "80", "assets/images/4.jpg"),
    foodMenu("ทอดปลา", "85", "assets/images/5.jpg"),
    foodMenu("ปลาดุกทอด", "90", "assets/images/8.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "เลือกเมนูอาหาร",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            foodMenu food = menu[index];
            return ListTile(
              leading: Image.asset(food.img),
              title: Text(
                "${index + 1}" + "." + food.name,
                style: TextStyle(fontSize: 30),
              ),
              subtitle: Text(food.name + "ราคา" + food.price + "บาท"),
              onTap: () {
                print("คุณเลือกเมนู คือ " + food.name);
                AlertDialog alert = AlertDialog(
                  title: Text("คุณเลือกเมนู คือ " + food.name),
                );
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
            );
          }),
    );
  }

  List<Widget> getData(int count) {
    List<Widget> data = [];

    data.add(
      Text(
        "กดปุ่ม เพื่อค่า ตัวเลข",
        style: TextStyle(fontSize: 40, color: Colors.red),
      ),
    );
    for (var i = 1; i <= 10; i++) {
      var menu = ListTile(
        title: Text(
          "เมนูที่ $i",
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
        subtitle: Text("หัวข้อย่อยที่ $i"),
      );
      data.add(menu);
    }
    return data;
  }
}
