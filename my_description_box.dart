import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8)
      ),
      
        padding: const EdgeInsets.all(25.0),
        margin: EdgeInsets.only(left: 25,right: 25,bottom: 50),
        
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('\$0.99',style: TextStyle(color: Colors.grey),),
                Text('Delivery fee',style: TextStyle(fontSize: 18,color: Colors.black),)
              ],
            ),
        
            Column(
              children: [
                Text('15-20 min',style: TextStyle(color: Colors.grey)),
                Text('Delivery time',style: TextStyle(fontSize: 18,color: Colors.black)),
              ],
            )
          ],
        ),
      
    );
  }
}