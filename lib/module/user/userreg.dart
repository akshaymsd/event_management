import 'package:event_management/module/auth/login.dart';
import 'package:flutter/material.dart';

import '../../widget/userText.dart';

class Usereg extends StatelessWidget {
  Usereg({super.key});
  TextEditingController textctrl = TextEditingController();
  TextEditingController textctrl1 = TextEditingController();
  TextEditingController textctrl2 = TextEditingController();
  TextEditingController textctrl3 = TextEditingController();
  TextEditingController textctrl4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SIGN UP',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
                ));
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.all((20)),
        color: Colors.white,
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 10),
              userText(
                controller: textctrl,
                name: 'Name',
              ),
              SizedBox(
                height: 20,
              ),
              userText(controller: textctrl1, name: 'Phone'),
              SizedBox(
                height: 20,
              ),
              userText(controller: textctrl2, name: "Email"),
              SizedBox(
                height: 20,
              ),
              userText(controller: textctrl3, name: 'Password'),
              SizedBox(
                height: 20,
              ),
              userText(controller: textctrl4, name: 'Confirm Password'),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 600,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent),
                    child: Text(
                      "Sign up",
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
