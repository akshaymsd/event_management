import 'package:event_management/module/auth/staffreg.dart';
import 'package:event_management/module/user/homepage.dart';
import 'package:event_management/module/user/userreg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widget/newbutton.dart';
import '../../widget/textbox.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController textfieldctrl = TextEditingController();
  TextEditingController textfieldctrl2 = TextEditingController();
  TextEditingController button1 = TextEditingController();
  TextEditingController button2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(20),
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [

            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'Login',
                style: TextStyle(
                    fontFamily: "Caveat", color: Colors.black, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          Textbox(
                            controller: textfieldctrl,
                            hinttext: 'Enter your email',
                            suffixicon: Icon(Icons.email_outlined),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Textbox(
                            controller: textfieldctrl2,
                            hinttext: 'enter your password',

                            suffixicon: Icon(Icons.remove_red_eye),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontSize: 15,
                                  ),
                                )),
                          ),
                          SizedBox(width: 650,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                                child: const Text(
                                  "LOG IN",
                                  style: TextStyle(color: Colors.white),
                                )),),
                          SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: Row(
                              children: [Padding(padding: EdgeInsets.only(left: 20,),child: Text(
                                'Dont have an account',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15),
                              )
                              )
                                ,

                                TextButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Sign up'),
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  icon: Icon(
                                                    Icons.cancel,
                                                    size: 30,
                                                  ))
                                            ],
                                          ),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    1.2,
                                                height: 50,
                                                child: NewButton(
                                                  controller: button1,
                                                  text: "USER",
                                                  onPress: () {

                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Usereg(),));
                                                  },
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      1.2,
                                                  height: 50,
                                                  child: NewButton(
                                                      controller: button2,
                                                      text: "STAFF",
                                                      onPress: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    Stafreg(),
                                                          ),
                                                        );
                                                      })),
                                            ],
                                          ),
                                        ),
                                      );
                                      Navigator.pushNamed(context, 'register');
                                    },
                                    child: Text(
                                      "Register",
                                      style: TextStyle(color: Colors.green),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
