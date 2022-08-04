import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

FirebaseFirestore firestore=FirebaseFirestore.instance;
class Message extends StatefulWidget {
Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {

TextEditingController _messagecontroler= TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference meesageref=FirebaseFirestore.instance.collection("message");
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text("Messages",
              style: TextStyle(
                fontSize: 26,fontWeight: FontWeight.bold
              ),),
            ),
          ),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: StreamBuilder(
             stream: meesageref.snapshots() ,
             builder: (Context ,AsyncSnapshot<QuerySnapshot<Object?>> snapshot)
             {
              if(snapshot.hasError){
                return Text("has error");
              }
              else if(snapshot.connectionState==ConnectionState.waiting){
         
         return CircularProgressIndicator();
              }
              else if(snapshot.data==null){
                return Text("no data");
              }
              else{
                return ListView(
                  children:snapshot.data!.docs.map((e){
                    final dynamic data=e.data();
                    return Text(data['sendmessage'] ?? "null");
                  }).toList()
                );
              }
             }
                ),
           ),
         ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Expanded(
                child:TextFormField(
                  controller: _messagecontroler,
                  decoration: InputDecoration(
                    hintText: "Message",
                    filled:true,
                    fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  )
                  )
                  
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(onPressed: (){
                    addmessage(message: _messagecontroler.text);
                  },
                  color: Colors.blue, 
                  iconSize: 35,
                  icon:Icon(Icons.send)),
                )
              ]
                ),
          ),
          
            ],
          )
        ),
      );
    
    
  }
}

Future <DocumentReference>addmessage({required String message})async{
  DocumentReference _messagedoc= await firestore.collection("message").add({
    "sendmessage":"$message"
  });
return _messagedoc;
}


