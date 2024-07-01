import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:villa/models/restaurant.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});
void openLocationSearchBox(BuildContext context){
  showDialog(context: context, builder: (context)=> AlertDialog(
    title: Text('Your location'),
    content: TextField(
      decoration: InputDecoration(hintText:
       'Enter Address....'),
    ),
    actions: [
      MaterialButton(onPressed: ()=> Navigator.pop(context),
      child: Text('Cancel'),
      ),

       MaterialButton(onPressed:
        (){
          var textController;
          String newAddress = textController.text;
          context.read<Restaurant>()
          .updateDeliveryAddress(newAddress);
          Navigator.pop(context);
        },
      child: Text('Savee'),
      ),
    ],
  ));
}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Deliver now',style: TextStyle(color: Colors.black,fontSize: 20),),
      
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(builder:
                (context,restaurant,child) =>
                Text(restaurant.deliveryAddress,
                style: TextStyle(color:
                 Colors.grey,fontWeight:
                  FontWeight.bold,fontSize: 20),
                  ), ),
                  
                Icon(Icons.keyboard_arrow_down_rounded,size: 30,)
              ],
            ),
          )
        ],
      ),
    );
  }
}