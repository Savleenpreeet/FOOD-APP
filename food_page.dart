



import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:villa/components/my_button.dart';
import 'package:villa/models/food.dart';
import 'package:villa/models/restaurant.dart';

class FoodPage extends StatefulWidget {
  final Food food;
final Map<Addon,bool> selectedAddons = {};


   FoodPage({Key? key, required this.food}) :
    super(key: key){

      for (Addon addon in food.availableAddons){
        selectedAddons[addon] = false;
      }
    }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addToCart(Food food, Map<Addon,bool> 
  selectedAddons){

    Navigator.pop(context);
    List<Addon> currentlySelectedAddons = [];
    for(Addon addon in widget.food.availableAddons){
      if(widget.selectedAddons[addon] == true){
        currentlySelectedAddons.add(addon);
        }
    }
    context.read<Restaurant>().addToCart(food, 
    currentlySelectedAddons);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(backgroundColor:
      Colors.grey,
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            // Image.asset(widget.food.imagePath),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      widget.food.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Text(
                      '\$${widget.food.price.toString()}',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  // SizedBox(height: 20,),
                  // Text(
                  //   widget.food.description,
                  //   style: TextStyle(
                  //     fontSize: 15,
                  //     fontWeight: FontWeight.bold,
                  //     fontStyle: FontStyle.italic,
                  //   ),
                  // ),
                  SizedBox(height: 20,),
                  // Divider(color: Colors.black,),
                  SizedBox(height: 15,),
                  Text(
                    'Add-ons',
                    style: TextStyle(
                      fontSize: 16,color: Colors.pink,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder: (context, index) {
                        Addon addon = widget.food.availableAddons[index];
                        return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text(
                            '\$${addon.price}',
                            style: TextStyle(color: Colors.black38),
                          ),
                          value: widget.selectedAddons[addon],
                          onChanged: (bool? value) {
setState(() {
  widget.selectedAddons[addon] = value!;
});


                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 96.0),
                     MyButton(
                      onTap: () => addToCart(
                        widget.food,widget.selectedAddons
                      ), // Add your functionality here
                  text: 'Add to cart',
                      
                    ),
                
                  
                ],
              ),
            ),
          ],
        ),
      ),
    ),

    SafeArea(
      child: Opacity(
        opacity: 0.6,
        child: Container(
          margin: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle),
          child: IconButton(onPressed: () =>
         Navigator.pop(context), icon: Icon(Icons.arrow_back_ios_rounded),
         ),),
      ),
    ),
      
      ],
    );

  }
}
