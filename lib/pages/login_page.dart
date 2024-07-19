import 'package:flutter/material.dart';
import 'package:health_care/pages/dashboad_page.dart';
import 'package:health_care/pages/flash_dis.dart';
import 'package:health_care/pages/singup_page.dart';

class Login_Page extends StatelessWidget {
  const Login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
              child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      alignment: Alignment.centerLeft,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => FlashDis())));
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                ],
              ),
              // Icon(Icons.arrow_back_ios,),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "d",
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    "ev",
                    style: TextStyle(color: Colors.red, fontSize: 32),
                  ),
                  Text(
                    "sdk",
                    style: TextStyle(fontSize: 32),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Log in Now",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "Please fill the details create account",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Email", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Password", border: OutlineInputBorder()),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Password must be altest 6 char")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left: 100, right: 100),
                    backgroundColor: Colors.red,
                    shape: ContinuousRectangleBorder()),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DashboardPage()));
                },
                child: Text(
                  "Log in",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Foergot Password? "),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text("sign up",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold)))
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
