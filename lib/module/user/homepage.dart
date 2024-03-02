import 'package:event_management/module/user/package.dart';
import 'package:event_management/module/user/package2.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Alley Events",
                style: TextStyle(fontFamily: "DancingB", color: Colors.white),
              ),
              SizedBox(
                width: 120,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ))
            ],
          ),
          leading: IconButton(
            icon: Icon(Icons.space_dashboard),
            color: Colors.white,
            onPressed: () {},
          )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              backgroundColor: Colors.amber,
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
              backgroundColor: Colors.indigo,
              label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              color: Colors.black,
            ),
            backgroundColor: Colors.amber,
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              backgroundColor: Colors.indigo,
              label: 'Profile')
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Image.asset(
                'assets/img/event.jpg',
                height: 200,
                width: 800,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 505,
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
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Event Packages",
                style: TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset(
                            'assets/img/bd.jpg',
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            child: Text(
                          "Birthday Function",
                          style: TextStyle(fontFamily: 'EncodeB'),
                        )),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Userpakg(),
                                          ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.indigo[900],
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7))),
                                    child: Text(
                                      'Book',
                                      style: TextStyle(color: Colors.white),
                                    )))),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset(
                            'assets/img/wed.jpg',
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            child: Text(
                          "Wedding Function",
                          style: TextStyle(fontFamily: 'EncodeB'),
                        )),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Package2(),
                                          ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.indigo[900],
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7))),
                                    child: Text(
                                      'Book',
                                      style: TextStyle(color: Colors.white),
                                    )))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset(
                            'assets/img/aniver.jpg',
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            child: Text(
                          "Aniversary Function",
                          style: TextStyle(fontFamily: 'EncodeB'),
                        )),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.indigo[900],
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7))),
                                    child: Text(
                                      'Book',
                                      style: TextStyle(color: Colors.white),
                                    )))),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset(
                            'assets/img/aniver.jpg',
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            child: Text(
                          "Aniversary Function",
                          style: TextStyle(fontFamily: 'EncodeB'),
                        )),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.indigo[900],
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7))),
                                    child: Text(
                                      'Book',
                                      style: TextStyle(color: Colors.white),
                                    )))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset(
                            'assets/img/bd.jpg',
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            child: Text(
                          "Birthday Function",
                          style: TextStyle(fontFamily: 'EncodeB'),
                        )),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.indigo[900],
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7))),
                                    child: Text(
                                      'Book',
                                      style: TextStyle(color: Colors.white),
                                    )))),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
