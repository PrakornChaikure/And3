import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cnfpassword = TextEditingController();
  TextEditingController mobile = TextEditingController();

  @override
  void initState() {
    username.text = ""; //innitail value of text field
    email.text = "";
    password.text = "";
    cnfpassword.text = "";
    mobile.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("REGISTER"),
        ),
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/wall.jpg"),
                    fit: BoxFit.cover)),
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Nice.jpg",
                    height: 120,
                  ),
                  TextField(
                      controller: username,
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'Enter you Username',
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                  Container(height: 8),
                  TextField(
                      controller: email,
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'Enter you Address',
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.email, color: Colors.white),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                  Container(height: 8),
                  TextField(
                      controller: password,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'Enter you Password',
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                  Container(height: 8),
                  TextField(
                      controller: cnfpassword,
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'Enter you Password',
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                  Container(height: 8),
                  TextField(
                      controller: mobile,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone, color: Colors.white),
                        labelText: "Mobile",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'Enter you Number',
                        hintStyle: const TextStyle(color: Colors.white),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                  Container(
                    padding: const EdgeInsets.all(10.30),
                    child: TextButton(
                      child: Text(
                        "REGISTER",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      " Already have an Account ?",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Login  ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.white,
          width: 3,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.white,
          width: 3,
        ));
  }
  //create a function like this so that you can use it wherever you want
}
