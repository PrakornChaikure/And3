import 'package:flutter/material.dart';
import 'foodMenu.dart';
import 'MoneyBox.dart';

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
            "Amount Balance",
            style: TextStyle(fontSize: 30, color: Colors.grey),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                height: 100,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: InputDecoratorExample(),
              ),
              MoneyBox("ยอดคงเหลือ", 30000.512, 80, Colors.grey.shade300),
              SizedBox(height: 3),
              MoneyBox("รายรับ", 10000, 80, Colors.grey.shade400),
              SizedBox(height: 3),
              MoneyBox("รายจ่าย", 80000, 80, Colors.grey.shade600),
              SizedBox(height: 3),
              MoneyBox("ค้างจ่าย", 4000, 80, Colors.grey.shade800),
              Container(
                child: TextButton(
                  child: Text(
                    "BUTTON",
                    style: TextStyle(fontSize: 30),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ));
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

class InputDecoratorExample extends StatelessWidget {
  const InputDecoratorExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: 'Account Name',
        labelStyle:
            MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
          return TextStyle(letterSpacing: 1.3);
        }),
      ),
      validator: (String? value) {
        if (value == null || value == '') {
          return 'Enter name';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.always,
    );
  }
}
