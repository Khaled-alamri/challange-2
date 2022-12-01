import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'cc.dart';

class Scren1 extends StatefulWidget {
  Scren1({super.key});

  @override
  State<Scren1> createState() => _Scren1State();
}

class _Scren1State extends State<Scren1> {
  final ButtonStyle style1 = ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(255, 41, 20, 176),
    fixedSize: Size(200, 46),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
  );
  bool s=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        centerTitle: true,
        title: Text("Add Course"),
        backgroundColor: Color.fromARGB(255, 6, 74, 130),
        
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.check,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                child: Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Center(
                        child: Image.asset(
                          "img/img_c.jpeg",
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Courser",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100,),
                      child: Center(child: Text("UX Design")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100,),
                      child: Center(child: Text("28 Students",style:TextStyle(color: Color.fromARGB(255, 191, 190, 188)) ,)),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 23),
                child: Container(
                    child: ElevatedButton(
                        style: style1,
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 150),
                                    child: Center(
                                      child: Container(
                                        height: MediaQuery.of(context).size.height/2,
                                        child: AlertDialog(
                                          icon: Padding(
                                            padding: const EdgeInsets.only(top: 70),
                                            child: Icon(
                                              Icons.check_box,
                                              color: Colors.green,
                                              size: 110.0,
                                            ),
                                          ),
                                          content: Padding(
                                            padding: const EdgeInsets.only(bottom: 70),
                                            child: Center(child: Text('Success')),
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(2.0))),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text("Sohw alert"))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    child: ElevatedButton(
                        style: style1,
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: MediaQuery.of(context).size.height / 2,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, right: 40),
                                              child: Text(
                                                "Settings",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(30),
                                        child: Column(
                                          children: [
                                            MyWidget(name: "Allow Teacher",),
                                            MyWidget(name: "Allow Students",),
                                            MyWidget(name: "Allow Attendance",),
                                            MyWidget(name: "Allow Edit",),
                                           
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Text("Settings"))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
