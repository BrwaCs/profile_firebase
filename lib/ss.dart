import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_firebase/message.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: Container(
          height: 600,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(20),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue,width: 5),
                  image: DecorationImage(image: NetworkImage("https://images.alphacoders.com/475/475526.jpg"),
                  fit: BoxFit.fill,
                   )
                ),
              ),
              ),
            
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("No One",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Occaecat nulla proident dolor \n amet elit ipsum non id cillum enim \n occaecat laboris.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    )
                  ],
                ),
              ),
              SizedBox(height:10,),
             GestureDetector(
               onTap: (){},
               child: Container(
                 width: 260,
                 height: 50,
                 color:  Colors.green,
                 child: ListTile(
                   leading: FaIcon(FontAwesomeIcons.facebookSquare,color: Colors.black,),
                   title: Text("Facebook",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),)
                 ),
               ),
             ),
                SizedBox(height:10,),
                
             GestureDetector(
               onTap: () {
      
               },
               child: Container(
                 width: 260,
                 height: 50,
                 color:  Color.fromARGB(255, 0, 129, 199),
                 child: ListTile(
                   leading: FaIcon(FontAwesomeIcons.linkedin,color: Colors.black,),
                   title: Text("Linkedin",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),)
                 ),
               ),
             ),
                SizedBox(height:10,),
             GestureDetector(
               onTap: (){},
               child: Container(
                 width: 260,
                 height: 50,
                 color:  Color.fromARGB(255, 148, 98, 206),
                 child: ListTile(
                   leading: FaIcon(FontAwesomeIcons.github,color: Colors.black,),
                   title: Text("GitHub",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),)
                 ),
               ),
             ),
                SizedBox(height:10,),
             GestureDetector(
               onTap: (){},
               child: Container(
                 width: 260,
                 height: 50,
                 color:  Color.fromARGB(255, 249, 102, 166),
                 child: ListTile(
                   leading: FaIcon(FontAwesomeIcons.twitter,color: Colors.black,),
                   title: Text("Twitter",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),)
                 ),
               ),
             ),
             SizedBox(height:10,),
              Expanded(
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 20,
                        child: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.black,size:20),
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 176, 0, 229),
                        radius: 20,
                        child: FaIcon(FontAwesomeIcons.yahoo,color: Colors.black,size:20),
                      
                      ),
                      
                      ElevatedButton(
                        
                        onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Message()));
                        },
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 12, 125, 18),
                          radius: 20,
                          child: FaIcon(FontAwesomeIcons.message,color: Colors.black,),
                            
                        ),
                      )
                      
                    ],
                  ),
              ),
              
            ],
          ),
        )
        
      );
  }
}