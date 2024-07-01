import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DriverDetails extends StatefulWidget {
  const DriverDetails({super.key});

  @override
  State<DriverDetails> createState() => _DriverDetailsState();
}

class _DriverDetailsState extends State<DriverDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: const Color.fromARGB(255, 151, 189, 208),),
   



      body: Column(
        children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0,top: 20),
              child: CircleAvatar(radius: 35, 
              backgroundColor: Colors.black,child: FaIcon(FontAwesomeIcons.carOn,
              color: Colors.white,size: 35,),),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 23.0,top: 20),
              child: Column(
                children: [
                  Text('XYZ',style: TextStyle(fontSize: 25),),
                  Text('Delivery Partner',style: TextStyle(fontSize: 22),)
                ],
              ),
            )
            ],),
      
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,top: 25),
              child: Row(children: [FaIcon(FontAwesomeIcons.solidMessage,size: 30,
              color: Colors.blueGrey,
              ),
              SizedBox(width: 20,),
              Text('Message  Now',style: TextStyle(fontSize: 20,color: Colors.blueGrey))
              ],
              ),
            ),
      
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,top: 25),
              child: Row(children: [FaIcon(FontAwesomeIcons.phone,size: 30,
              color: Colors.green,
              ),
              SizedBox(width: 20,),
              Text('Call  Now',style: TextStyle(fontSize: 20,color: Colors.blueGrey))
              ],
              ),
            ),
      
      
            ],
      
            
      ),
    );
    
  }
}