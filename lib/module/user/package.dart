import 'package:flutter/material.dart';

class Userpakg extends StatefulWidget {
  const Userpakg({super.key});

  @override
  State<Userpakg> createState() => _UserpakgState();
}

class _UserpakgState extends State<Userpakg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Birthday Packages',
          style: TextStyle(
              fontFamily: 'Ubuntu', color: Colors.white, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(20),
                  height: 250,
                  width: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, right: 5, left: 5),
                    child: Image.asset('assets/img/bd package1.jpg'),
                  ))),
              Container(
                  margin: EdgeInsets.all(20),
                  width: 500,
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text('Package Includes',
                          style: TextStyle(
                            fontFamily: 'EncodeS',
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: Divider(height: 10),
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(right: 30, top: 10)),
                        Text(
                          'Birthday Cake:',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: 'DancingB',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'A personalized or themed birthday cake is a classic element',
                          style: TextStyle(fontFamily: 'DancingM'),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Text(
                          'of a birthday package. It can be designed based on the birthday persons  ',
                          style: TextStyle(fontFamily: 'DancingM'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Text('interests or favorite flavors.',
                            style: TextStyle(fontFamily: 'DancingM'))
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(right: 30, top: 10)),
                        Text(
                          'Decorations:',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: 'DancingB',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Decorations such as balloons, banners, and streamers to create',
                          style: TextStyle(fontFamily: 'DancingM'),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Text(
                          'a festive and celebratory atmosphere. ',
                          style: TextStyle(fontFamily: 'DancingM'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(right: 30, top: 10)),
                        Text(
                          'Gifts:',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: 'DancingB',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Small or personalized gifts for the birthday person.',
                          style: TextStyle(fontFamily: 'DancingM'),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Text(
                          'These could include items like a custom mug, a photo frame, or a personalized   ',
                          style: TextStyle(fontFamily: 'DancingM'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Text(
                          ' piece of jewelry. ',
                          style: TextStyle(fontFamily: 'DancingM'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(right: 30, top: 10)),
                        Text(
                          'Price:10000/-',
                          style: TextStyle(
                              fontFamily: 'UbuntuR',
                              backgroundColor: Colors.yellow),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 150,
                          ),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.indigo[800],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7))),
                              child: Text(
                                'Book Your Event',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ],
                    )
                  ]))
            ],
          )),
    );
  }
}
