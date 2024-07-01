import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.only(left: 20.0,top: 30),
  child:  Column(
    children: [
      Row(
          children: [
            CircleAvatar(radius: 40,backgroundColor:  Colors.grey,
              child: FaIcon(FontAwesomeIcons.user,size: 30,),
              ),
          
        
      SizedBox(width: 10,),
      Text('USER\'S PROFILE',style: TextStyle(fontSize: 20),),
          ]
        ),
        SizedBox(height: 10,),
    Divider(color: Colors.black,),
  
  Padding(
    padding: const EdgeInsets.only(left: 10.0,top: 30),
    child: Row(
      children: [
        FaIcon(FontAwesomeIcons.shop),SizedBox(width: 25,),
        Text('Shop',style: TextStyle(fontSize: 18),),
      ],
    ),
  ),

    Padding(
    padding: const EdgeInsets.only(left: 10.0,top: 30),
    child: Row(
      children: [
        FaIcon(FontAwesomeIcons.heart),SizedBox(width: 25,),
        Text('Your favourites',style: TextStyle(fontSize: 18),),
      ],
    ),
    ),


Padding(
    padding: const EdgeInsets.only(left: 10.0,top: 30),
    child: Row(
      children: [
        FaIcon(FontAwesomeIcons.star),SizedBox(width: 25,),
        Text('Restaurant Rewards',style: TextStyle(fontSize: 18),),
      ],
    ),
),
Padding(
    padding: const EdgeInsets.only(left: 10.0,top: 30),
    child: Row(
      children: [
        FaIcon(FontAwesomeIcons.wallet),SizedBox(width: 25,),
        Text('Wallet',style: TextStyle(fontSize: 18),),
      ],
    ),
),


Padding(
    padding: const EdgeInsets.only(left: 10.0,top: 30),
    child: Row(
      children: [
        FaIcon(FontAwesomeIcons.suitcase),SizedBox(width: 25,),
        Text('Business Preferences',style: TextStyle(fontSize: 18),),
      ],
    ),
),

Padding(
    padding: const EdgeInsets.only(left: 10.0,top: 30),
    child: Row(
      children: [
        FaIcon(FontAwesomeIcons.gift),SizedBox(width: 25,),
        Text('Send a gift',style: TextStyle(fontSize: 18),),
      ],
    ),
),
Padding(
    padding: const EdgeInsets.only(left: 10.0,top: 30),
    child: Row(
      children: [
        FaIcon(FontAwesomeIcons.tag),SizedBox(width: 25,),
        Text('Promotion',style: TextStyle(fontSize: 18),),
      ],
    ),
),
Padding(
    padding: const EdgeInsets.only(left: 10.0,top: 30),
    child: Row(
      children: [
        FaIcon(FontAwesomeIcons.ticket),SizedBox(width: 25,),
        Text('Uber pass',style: TextStyle(fontSize: 18),),
      ],
    ),
),












  
  ],),
  
),




 
    );
  }
}



//  [FontAwesomeIcons.shop,'Orders'],
//   [FontAwesomeIcons.heart,'Your favourites'],
//   [FontAwesomeIcons.star,'Restaurant Rewards'],
//   [FontAwesomeIcons.wallet,'Wallet'],
//   [FontAwesomeIcons.gift,'Send a gift'],
//   [FontAwesomeIcons.suitcase,'Business Preferences'],
//   [FontAwesomeIcons.person,'Help'],
//   [FontAwesomeIcons.tag,'Promotion'],
//   [FontAwesomeIcons.ticket,'Uber pass'],
//   [FontAwesomeIcons.suitcase,'Deliver with Uber'],
//   [FontAwesomeIcons.gear,'Settings'],
//   [FontAwesomeIcons.powerOff,'Sign Out'],