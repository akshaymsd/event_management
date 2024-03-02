import 'package:flutter/material.dart';

import '../../widget/userText.dart';

class Stafreg extends StatefulWidget {
  Stafreg({super.key});



  @override
  State<Stafreg> createState() => _StafregState();
}

class _StafregState extends State<Stafreg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('SIGN UP',style: TextStyle(fontFamily: 'EncodeS',fontWeight: FontWeight.bold),),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading:
      IconButton(icon: Icon(Icons.arrow_back), onPressed: () {  },),
    ),
      body: Container(
        margin: EdgeInsets.all((20)),
        color: Colors.white,
        child: Form(
          child: Column(
            children: [TextFormField(
              decoration: InputDecoration(labelText: 'Name',border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              )),

            ),

              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone',border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                )),

              ),SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email',border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                )),

              ),SizedBox(height: 10,),
              TextFormField(obscureText: true,
                decoration: InputDecoration(labelText: 'Password',border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                )),

              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(labelText: "Confirm Password",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                )),

              ),SizedBox(height: 20,),
              SizedBox(
                width: 600,
                height: 40,
                child: ElevatedButton(onPressed: () {

                },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent),child: Text("Sign up",style: TextStyle(color: Colors.white),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}