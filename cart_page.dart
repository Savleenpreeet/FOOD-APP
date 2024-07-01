import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:villa/components/my_button.dart';
import 'package:villa/components/my_cart_tile.dart';
import 'package:villa/models/restaurant.dart';
import 'package:villa/pages/payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder:
    (context,restaurant,child){
final userCart = restaurant.cart;

return Scaffold(backgroundColor: const Color.fromARGB(255, 241, 168, 192),
  appBar: AppBar(
    title: const Text('Cart'),
backgroundColor: Colors.grey,
foregroundColor: Colors.white,

actions: [
  IconButton(onPressed: (){
    showDialog(context: context,
     builder: (context)=> AlertDialog(
      title: Text(
        'Are you sure you want to clear the cart?'),

      actions: [
        TextButton(onPressed: () => Navigator.pop(context),
         child: Text('Cancel'),
         ),
         TextButton(onPressed: (){
          Navigator.pop(context);
          restaurant.clearCart();
         },
         child: Text('Clear'),
         ),
      ],
     )
     );
  }, 
  
  icon: Icon(Icons.delete),
  )
],


  ),
  body: Column(
    children: [
      Expanded(
        child: Column(
          children: [
          userCart.isEmpty?
          Expanded(
            child: Center(
              child: Text('Cart is empty...',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              
              ),
              ),
              ):
            Expanded(child: ListView.builder(
              itemCount: userCart.length,
              itemBuilder: (context,index) {
                final cartItem = userCart[index];
                return MyCartTile(cartItem: cartItem);
            //      ListTile(
            //   title: Text(cartItem.food.name),
            // );
              }
            ),
             ),
          ],
        ),
      ),

      MyButton(text: 'Go to checkout',onTap: () =>
      Navigator.push(context, 
      MaterialPageRoute(builder: (context) =>PaymentPage(),
       ),
      
      ),),
      SizedBox(height: 47,),
    ],
  ),
);
    },);
  }
}