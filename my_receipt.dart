import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:villa/models/restaurant.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(
      left: 25,right: 25,bottom: 25,top: 50
    ),

    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Thank you for your order!!',
          style: TextStyle(fontStyle: FontStyle.italic,
          fontSize: 20,color: Colors.red),
          ),
          SizedBox(height: 25,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color:
               Colors.black),
               borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(25),
            child: Consumer<Restaurant>(
              builder: (context,restaurant,child,) =>
              Text(restaurant.displayCartReceipt()
              ),
            ),
          ),

          SizedBox(height: 25,),
          Text('Estimated delivery time is: 4:10pm',
          style: TextStyle(fontSize: 18,
          color: Colors.blueGrey),),
        ],
      ),
    ),
    );
  }
}