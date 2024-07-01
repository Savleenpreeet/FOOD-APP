import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:villa/models/food.dart';

class FoodTile extends StatelessWidget {

  final Food food;
  final void Function()? onTap;
  const FoodTile({super.key, required this.food, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0),
                      child: Text(food.name,style: 
                      TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0),
                      child: Text(
                        '\$' + food.price.toString(),
                        ),
                    ),
                    //   SizedBox(height: 8,),
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     left: 15.0),
                    //   child: Text(food.description),
                    // ),
                    SizedBox(height: 20,)
                  ],
                  ),
                  
                  ),

                 ClipRRect(
  borderRadius: BorderRadius.circular(8),
  
                  child: Padding(
                    padding: const EdgeInsets.only(right: 3.0),
                    //  child: Image.network('https://img.freepik.com/free-photdelicious-burger-with-fresh-ingredients_23-2150857908.jpg',
                    //  height: 130, width: 180,),
                  )
              
            ),


             
            ],
          ),
        ),
        Divider(color: Colors.black,),
      ],
    );
  }
}