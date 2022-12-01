//import 'package:chalenge2/Dailog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  get builder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Add Course")),
      ),
      body: ListView(
        

        children: [

          SizedBox(height: 30,),
          Container(
            height: 100,
            width: 100,
            //decoration:ShapeDecoration.fromBoxDecoration() // MaterialStateProperty(BorderRadius) //BorderRadius.all(radius)
            child: Center(
              child: Image.asset("images/IMG_3101.JPG",
              fit: BoxFit.cover,
              ),
            ),
            
          ),
          Center(child: Text("Course", style: TextStyle(fontSize: 18), )),
          Center(child: Text("UX Desgin", style: TextStyle(fontSize: 18),)),
          Center(child: Text("Course", style: TextStyle(fontSize: 14),)),
 
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              // MyDilog();
                showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return  Container(
              height: MediaQuery.of(context).size.height/2,
              width:MediaQuery.of(context).size.width/1.2, 
             child:
              Center(child: Text("Success"))
              );});
              //showDialog(context: context, builder: builder);
            },
            child: 
               Center(child: const Text('Show Alart'))),
          
 
       
              
     Center(
       child: Container(
              
                    child: Text("Show Alart")),
     )
              , 
          // Dialog(
          //   //shape:ShapeBorder.lerp(, b, t) ,

          //   insetAnimationDuration: Duration(seconds: 7),
            
          // //   child:
          //   //   Container(
          //   //   height: MediaQuery.of(context).size.height/2,
          //   //   width:MediaQuery.of(context).size.width, 
          //   //  child:
          //   //   Center(child: Text("Success"))
          //   //   ),
          // ),
          

        ],
      ),
    );
  }
}
