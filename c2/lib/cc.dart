import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
 MyWidget({super.key, this.name});
  final String? name;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool? check1=false;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children:[
                                                  Text(widget.name.toString()),
                                                   Container(
                                                     child: Row(
                                                       children: [
                                                         CupertinoSwitch(
                                                  value: check1!,
                                                  thumbColor: CupertinoColors.systemBlue,
                                                  onChanged: (bool? value) {
                                                          // This is called when the user toggles the switch.
                                                          setState(() {
                                                             check1 = value;
                                                          });
                                                  },
                                                ),
                                                       ],
                                                     ),
                                                   ),
                                                ]
                                              ),
    );
  }
}