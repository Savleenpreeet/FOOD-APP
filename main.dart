





import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:villa/auth/login_or_register.dart';         
// import 'package:villa/components/addAddressScreen.dart';
import 'package:villa/firebase_options.dart';
import 'package:villa/models/restaurant.dart';
// import 'package:villa/pages/imageSlider.dart';
import 'package:villa/pages/login_page.dart';
// import 'package:villa/pages/register_page.dart';
// import 'package:villa/pages/sliderpage.dart';
// import 'package:villa/services/auth/auth_gate.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp( 
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Restaurant()),
        //  ChangeNotifierProvider(create: (context) => ImageProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      //  AddAddressScreen(),
      LoginPage()
      // ImageSlider(),
      // SlideImages(),
      // AuthGate(), 
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:villa/models/food.dart';
// import 'package:provider/provider.dart';
// import 'package:villa/models/restaurant.dart';

// class RestaurantMenu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Restaurant Menu'),
//       ),
//       body: Consumer<Restaurant>(
//         builder: (context, restaurant, child) {
//           return ListView.builder(
//             itemCount: restaurant.menu.length,
//             itemBuilder: (context, index) {
//               final food = restaurant.menu[index];
//               return ListTile(
//                 title: Text(food.name),
//                 subtitle: Text(food.description),
//                 leading: Image.network(
//                   food.imagePath,
//                   width: 50,
//                   height: 50,
//                   fit: BoxFit.cover,
//                 ),
//                 trailing: Text('\$${food.price.toStringAsFixed(2)}'),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => Restaurant(),
//       child: MaterialApp(
//         home: RestaurantMenu(),
//       ),
//     ),
//   );
// }
