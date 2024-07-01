import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:villa/components/my_quantity_selector.dart';
import 'package:villa/models/restaurant.dart';
import 'package:villa/pages/cart_item.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder:
    (context,restaurant,child) => 
    Container(decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(8),
      color: const Color.fromARGB(255, 245, 166, 192)
    ),
    margin: EdgeInsets.symmetric(
      horizontal: 25,vertical: 10
    ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(8),
              //   child: Image.asset(
              //     cartItem.food.imagePath,
              //     width: 100,
              //     height: 100,
              //   ),
              // ),
            SizedBox(width: 10,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cartItem.food.name),
                  Text('\$'+cartItem.food.price.toString()),
                ]
              ),
            Spacer(),
            
              QuantitySelector(quantity:cartItem.quantity, 
               food: cartItem.food,
                onIncrement: (){
                  restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                }, onDecrement: (){restaurant.removeFromCart(cartItem);
                },
                )
            ],),
          ),

          SizedBox(
            height: cartItem.selectedAddons.isEmpty?0:60,
            child: ListView(
scrollDirection: Axis.horizontal,
padding: EdgeInsets.only(left: 10,bottom: 10,right: 10),
children: cartItem.selectedAddons
.map(
  (addon) => FilterChip(
    label: Row(
  children: [
    Text(addon.name),
    SizedBox(width: 10,),
    Text('\$'+addon.price.toString()),
  ],
),
shape: StadiumBorder(
  side: BorderSide(color: Colors.black),
),
 onSelected: (value){},
 backgroundColor: Colors.blue,
 labelStyle: TextStyle(fontSize: 12),
),
).toList(),
            ),
          )
        ],
      ),
    ));
  }
}