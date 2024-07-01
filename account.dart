// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:provider/provider.dart';
// // import 'package:ubereatsresturant/controller/provider/resturantRegisterProvider/resturantRegisterProvider.dart';
// // import 'package:ubereatsresturant/controller/provider/authProvider/mobileAuthServices.dart';

// class AccountScreen extends StatefulWidget {
//   const AccountScreen({super.key});

//   @override
//   State<AccountScreen> createState() => _AccountScreenState();
// }

// class _AccountScreenState extends State<AccountScreen> {

//   @override
//   void initState() {
    // TODO: implement initState
    // super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   context.read<ResturantRegisterProvider>().getResturantDats();
    // });
//   }


// List account = [
//   [FontAwesomeIcons.shop,'Orders'],
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
// ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: ListView(
//           physics: BouncingScrollPhysics(),
//           padding: EdgeInsets.symmetric(horizontal: 15,
//         vertical: 10),
//         children: [
//           Consumer<ResturantRegisterProvider>(builder: (context,ResturantRegisterProvider,
//           child){
//             if(ResturantRegisterProvider.resturantData == null){
// return         Row(
//             children: [Padding(
//               padding: const EdgeInsets.only(left: 8.0),
//               child: CircleAvatar(
//                 child: FaIcon(FontAwesomeIcons.user,size: 29,
//                 ),
//                 radius: 35,
//               ),
//             ),
//             SizedBox(width: 22,),
//             Text('Users name',style: TextStyle(fontWeight: FontWeight.bold,
//             fontSize: 25,fontStyle: FontStyle.italic),)
//             ],
//           );
//             }else{
//               return    Row(
//             children: [
            //   Padding(
            //   padding: const EdgeInsets.only(left: 8.0),
            //   child: CircleAvatar(
            //     child: 
            //     Image(image: NetworkImage(ResturantRegisterProvider.resturantData!.bannerImages![0],
            //     ),),
            //     radius: 35,
            //   ),
            // ),
            // SizedBox(width: 22,),
//             Text(ResturantRegisterProvider.resturantData!.restaurantName!,style: TextStyle(fontWeight: FontWeight.bold,
//             fontSize: 25,fontStyle: FontStyle.italic),)
//             ],
//           );
//             }

//           }),
          
    
// // SizedBox(height: 16,),
// ListView.builder(
//   itemCount: account.length,
//   shrinkWrap: true,
//   physics: NeverScrollableScrollPhysics(),
  
//   itemBuilder: (context,index){
//   return ListTile(
//     onTap: () {
//       if(index == (account.length-1)){
//         MobileAuthServices.signOut(context);
//       }
//     },
//     leading: FaIcon(account[index][0],size: 22,
//     ),
//     title: Text(account[index][1], style: TextStyle(fontSize: 19),
//     ),
//   );
// })

//         ],
//         ),
//       ),
//     );
//   }
// }