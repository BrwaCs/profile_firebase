import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top:30.0),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Messages",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
          
            decoration: BoxDecoration(
                border: Border.all(
                 color: Colors.green,
                  ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
            height: 130,
            width: 310,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Name",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                     Container( width: 14.0, ),
                 Flexible( 
                   child: Text("Sit veniam excepteur et commodo consequat velitsdihfioshe reprehenderit reprehenderit veniam voluptate incididunt magna culpa",
                   style: TextStyle(
                    fontSize: 14,
                    height: 1.2
                   )
                   ),
                 )
                    ],
                  )
                ],
              ),
            ),
          ),
          Divider(thickness: 1,
          color: Colors.grey,),
          SizedBox(height: 10,),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("SEND ME A MESSAGE")
                  ],
                ),
                Row(
                  children: [
                    TextField(
           cursorColor: Colors.redAccent,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
    
  }
}