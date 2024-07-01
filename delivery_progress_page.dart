import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:villa/components/my_receipt.dart';
import 'package:villa/models/restaurant.dart';
import 'package:villa/pages/driverdetails.dart';
import 'package:villa/services/database/firestore.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {

FirestoreService db =FirestoreService();

@override
  void initState() {
    // TODO: implement initState
    super.initState();


String receipt = context.read<Restaurant>().displayCartReceipt();
db.saveOrderToDatabase(receipt);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 202, 215, 238),
      appBar: AppBar(
        // title: const Text('Delivery in Progress...'),
      backgroundColor: Colors.transparent,
      ),
bottomNavigationBar: _buildBottomNavBar(context),

      body: Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80, width: 100,decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(15)),
        child: Center(child: GestureDetector(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DriverDetails()));
        },
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Driver details',
              style: TextStyle(fontSize: 22),),
              // SizedBox(width: 20,),
              FaIcon(FontAwesomeIcons.arrowRight),
            ],
          ),
        )),),
    );
    
  }
}