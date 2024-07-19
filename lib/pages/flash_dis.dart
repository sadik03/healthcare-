import 'package:flutter/material.dart';
import 'package:health_care/pages/login_page.dart';

class FlashDis extends StatelessWidget {
  const FlashDis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
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
              height: 50,
            ),
            Container(
              child: Image.asset("assets/images/logo.webp"),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(
              "Create an account and access thousand ",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 45,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(left: 100, right: 100),
                  backgroundColor: Colors.red,
                  shape: ContinuousRectangleBorder()),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login_Page()));
              },
              child: Text(
                "Getting Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account ? "),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login_Page()));
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
