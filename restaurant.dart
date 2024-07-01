

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:villa/models/food.dart';
import 'package:villa/pages/cart_item.dart';


class Restaurant with ChangeNotifier {
  final List<Food> _menu = [
    Food(
      name: 'Classic Cheese Burger',
      // description: 'A patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor',
      
        imagePath: (''),
      price: 0.99, 
      category: FoodCategory.BURGERS,
      availableAddons: [
        Addon(name: 'Hamburger', price: 0.98),
        Addon(name: 'Classic burger', price: 1.00),
        Addon(name: 'Bacon', price: 0.89),
        Addon(name: 'Lettuce', price: 0.50),
      ],
    ),

      Food(name: 'Double Cheese Burger',
    //  description: 'A patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor',
      imagePath: 'lib/images/BURGERS/4b.jpeg',
       price: 0.99, 
      category: FoodCategory.BURGERS,
       availableAddons: [
        Addon(name: 'Turkey Burger', price: 0.98),
        Addon(name: 'Chicken Burger', price: 1.00),
        Addon(name: 'Lamb Burger', price: 0.89),
        Addon(name: 'Speciality burger', price: 0.50),
       ],
       ),

   

   Food(name: 'Patty  Cheese Burger',
    //  description: 'patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor',
     
       imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.BURGERS,
       availableAddons: [
        Addon(name: 'Veggie Burger', price: 0.98),
        Addon(name: 'Shawarma Burger', price: 1.00),
        Addon(name: 'Muffaletta Burger', price: 0.89),
        Addon(name: 'Kimchi Burger', price: 0.50),
       ],
       ),

          Food(name: 'Patty Burger',
    //  description: 'A patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor',
       imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.BURGERS,
       availableAddons: [
        Addon(name: 'Kubie Burger', price: 0.98),
        Addon(name: 'Olive Burger', price: 1.00),
        Addon(name: 'Nutburger', price: 0.89),
        Addon(name: 'Pimento Cheeseburger', price: 0.50),
       ],
       ),


   Food(name: 'Avocado  Burger',
      // description: 'A patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.BURGERS,
       availableAddons: [
        Addon(name: 'Green Chile Cheeseburger', price: 0.98),
        Addon(name: 'Slaw Burger', price: 1.00),
        Addon(name: 'Ground Hamburger', price: 0.89),
        Addon(name: 'Short Rib burger', price: 0.50),
       ],
       ),
// DESSERTS

   Food(name: 'CHOCOLATES',
    //  description: 'Dessert sauces: Sauces complement the main item and add flavor, moisture, and visual appeal.',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.DESSERTS,
       availableAddons: [
        Addon(name: 'White Chocolate', price: 0.98),
        Addon(name: 'Dark Chocolate',price: 1.00),
        Addon(name: 'Semisweeet Chocolate', price: 0.89),
        Addon(name: 'Bittersweet Chocolate', price: 0.50),
       ],
       ),
          Food(name: 'Cakes',
    //  description: 'Dessert sauces: Sauces complement the main item and add flavor, moisture, and visual appeal.',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.DESSERTS,
       availableAddons: [
        Addon(name: 'Butter cake', price: 0.98),
        Addon(name: 'Sponge cake', price: 1.00),
        Addon(name: 'Carrot Cake', price: 0.89),
        Addon(name: 'Red Velvet Cake.', price: 0.50),
       ],
       ),
          Food(name: 'Cookies',
    //  description: 'Dessert sauces: Sauces complement the main item and add flavor, moisture, and visual appeal.',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.DESSERTS,
       availableAddons: [
        Addon(name: 'Chocolate Chip Cookies.', price: 0.98),
        Addon(name: 'Shortbread Cookies.', price: 1.00),
        Addon(name: 'Macaron Cookies.', price: 0.89),
        Addon(name: 'Macaroon Cookies.', price: 0.50),
       ],
       ),
          Food(name: 'Sweets',
    //  description: 'Dessert sauces: Sauces complement the main item and add flavor, moisture, and visual appeal.',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.DESSERTS,
       availableAddons: [
        Addon(name: 'Gulab jamun', price: 0.98),
        Addon(name: 'Halwa', price: 1.00),
        Addon(name: 'Jalebi', price: 0.89),
        Addon(name: 'Kheer', price: 0.50),
       ],
       ),

   Food(name: 'Ice cream',
    //  description: 'Dessert sauces: Sauces complement the main item and add flavor, moisture, and visual appeal.',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.DESSERTS,
       availableAddons: [
        Addon(name: 'Kulfi', price: 0.98),
        Addon(name: 'Frozen Yogurt', price: 1.00),
        Addon(name: 'Philadelphia Ice Cream', price: 0.89),
        Addon(name: 'Rolled Ice Cream', price: 0.50),
       ],
       ),

// drinks

   Food(name: 'Alcohol',
    //  description: 'It is made when yeast ferments the sugars in grains, fruits and vegetables. ',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.DRINKS,
       availableAddons: [
        Addon(name: 'Gin', price: 0.98),
        Addon(name: 'Vodka', price: 1.00),
        Addon(name: 'Rum', price: 0.89),
        Addon(name: 'Whiskey', price: 0.50),
       ],
       ),
          Food(name: 'Soft drinks',
    //  description: 'It is made when yeast ferments the sugars in grains, fruits and vegetables. ',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.DRINKS,
       availableAddons: [
        Addon(name: ' lemon-lime drinks', price: 0.98),
        Addon(name: 'orange soda', price: 1.00),
        Addon(name: 'cream soda', price: 0.89),
        Addon(name: 'grape soda', price: 0.50),
       ],
       ),
          Food(name: 'Mango shake',
    //  description: 'It is made when yeast ferments the sugars in grains, fruits and vegetables. ',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.DRINKS,
       availableAddons: [
        Addon(name: 'Cookies and Cream Milkshakes', price: 0.98),
        Addon(name: 'Chocolate Swirl Milkshakes', price: 1.00),
        Addon(name: 'Chocolate-Chocolate Milkshakes', price: 0.89),
        Addon(name: ' Peanut Butter Milkshakes', price: 0.50),
       ],
       ),
          Food(name: 'Chocolate shake',
    //  description: 'It is made when yeast ferments the sugars in grains, fruits and vegetables. ',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.DRINKS,
       availableAddons: [
        Addon(name: 'ALPHONSO', price: 0.98),
        Addon(name: 'KESAR', price: 1.00),
        Addon(name: 'TOMMY ATKINS', price: 0.89),
        Addon(name: 'KENT', price: 0.50),
       ],
       ),
          Food(name: 'Tea &  coffee',
    //  description: 'Tea is an aromatic beverage prepared from the leaves of the tea plant, Camellia sinensis,and is the most widely consumed beverage in the world.',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.DRINKS,
       availableAddons: [
        Addon(name: 'Black Tea', price: 0.98),
        Addon(name: 'White Tea', price: 1.00),
        Addon(name: 'Cortado', price: 0.89),
        Addon(name: 'Latte', price: 0.50),
       ],
       ),

// // salads

   Food(name: 'Greek salad',
    //  description: 'Condiments and salad dressings, which exist in a variety of flavors, are often used to enhance a salad.',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.SALADS,
       availableAddons: [
        Addon(name: 'Salata Horta', price: 0.98),
        Addon(name: 'Ampelofasolia Salata', price: 1.00),
        Addon(name: 'Salata Horiatiki', price: 0.89),
        Addon(name: 'Melitzanosalata', price: 0.50),
       ],
       ),
          Food(name: 'Chicken salad',
    //  description: 'Condiments and salad dressings, which exist in a variety of flavors, are often used to enhance a salad.',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.SALADS,
       availableAddons: [
        Addon(name: 'Classic Chicken Salad', price: 0.98),
        Addon(name: 'Chicken Pasta Salad', price: 1.00),
        Addon(name: 'Avocado Chimichurri Chicken Salad', price: 0.89),
        Addon(name: 'Creamy Potato Chicken Salad', price: 0.50),
       ],
       ),
          Food(name: 'Caeser salad',
    //  description: 'Condiments and salad dressings, which exist in a variety of flavors, are often used to enhance a salad.',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.SALADS,
       availableAddons: [
        Addon(name: 'Speck caesar salad', price: 0.98),
        Addon(name: 'Maple bacon and celery caesar salad', price: 1.00),
        Addon(name: 'Caesar slaw', price: 0.89),
        Addon(name: 'Shannon Bennett', price: 0.50),
       ],
       ),
          Food(name: 'Maceroni salad',
    //  description: 'Condiments and salad dressings, which exist in a variety of flavors, are often used to enhance a salad.',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.SALADS,
       availableAddons: [
        Addon(name: 'Amish Macaroni Salad', price: 0.98),
        Addon(name: 'Amelias Tuna Macaroni Salad', price: 1.00),
        Addon(name: 'Hawaiian Mac Salad', price: 0.89),
        Addon(name: 'Hawaiian Macaroni Salad', price: 0.50),
       ],
       ),
          Food(name: 'Bean salad',
    //  description: 'Condiments and salad dressings, which exist in a variety of flavors, are often used to enhance a salad.',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.SALADS,
       availableAddons: [
        Addon(name: 'Marinated Three Bean Salad', price: 0.98),
        Addon(name: 'Barbecued Bean Salad', price: 1.00),
        Addon(name: 'Vibrant Black-Eyed Pea Salad', price: 0.89),
        Addon(name: 'Balsamic Three-Bean Salad', price: 0.50),
       ],
       ),


// SIDES
   Food(name: 'French fries',
  //   description: 'They may be simple, prepackaged items, raw fruits or vegetables or more complicated dishes',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.SIDES,
       availableAddons: [
        Addon(name: 'Curly fries', price: 0.98),
        Addon(name: 'Waffle fries', price: 1.00),
        Addon(name: 'Crinkle fries', price: 0.89),
        Addon(name: 'Cheese fries', price: 0.50),
       ],
       ),
          Food(name: 'Potato chips',
    //  description: 'They may be simple, prepackaged items, raw fruits or vegetables or more complicated dishes',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.SIDES,
       availableAddons: [
        Addon(name: 'Doritos spicy', price: 0.98),
        Addon(name: 'Doritos tortilla', price: 1.00),
        Addon(name: 'Pringles original', price: 0.89),
        Addon(name: 'Funyons', price: 0.50),
       ],
       ),
          Food(name: 'Popcorn',
    //  description: 'They may be simple, prepackaged items, raw fruits or vegetables or more complicated dishes',
      imagePath: '../',
       price: 0.99, 
      category: FoodCategory.SIDES,
       availableAddons: [
        Addon(name: 'White popcorn', price: 0.98),
        Addon(name: 'Cheese popcorn', price: 1.00),
        Addon(name: 'Yellow popcorn', price: 0.89),
        Addon(name: 'Caramel popcorn', price: 0.50),
       ],
       ),
          Food(name: 'Hummus',
   //  description: 'They may be simple, prepackaged items, raw fruits or vegetables or more complicated dishes',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.SIDES,
       availableAddons: [
        Addon(name: 'Creamy avocado', price: 0.98),
        Addon(name: 'Black bean', price: 1.00),
        Addon(name: 'Roasted red pepper', price: 0.89),
        Addon(name: 'Savory pumpkin', price: 0.50),
       ],
       ),
          Food(name: 'Pretzels',
    //  description: 'They may be simple, prepackaged items, raw fruits or vegetables or more complicated dishes',
      imagePath: 'lib/images/BURGERS/1b.webp',
       price: 0.99, 
      category: FoodCategory.SIDES,
       availableAddons: [
        Addon(name: 'Soft pretzels', price: 0.98),
        Addon(name: 'Hard pretzels', price: 1.00),
        Addon(name: 'Pretzel crisps', price: 0.89),
        Addon(name: 'Pretzel shapes', price: 0.50),
       ],
       ),
  ];


final  List<CartItem> _cart = [];
String _deliveryAddress = 'Maheshwari chownk';

  
   List<Food> get menu => _menu;
   List<CartItem> get cart => _cart;
   String get deliveryAddress => _deliveryAddress;

// final  List<CartItem> _cart = [];

// List<CartItem> get cart => _cart;

void addToCart(Food food , List<Addon> selectedAddons){
  CartItem? cartItem = _cart.firstWhereOrNull((item){
    bool isSameFood = item.food == food;
    bool isSameAddons = ListEquality().equals(
      item.selectedAddons,selectedAddons);

      return isSameFood && isSameAddons;
  });

  if(cartItem != null){
  cartItem.quantity++;
  }
   else{
    _cart.add(
      CartItem(
        food: food,
        selectedAddons: selectedAddons,
    ),
    );
   }
   notifyListeners();
}

   void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if(cartIndex!= -1){
      if(_cart[cartIndex].quantity>1){
        _cart[cartIndex].quantity--;
      }
    }else{
      _cart.removeAt(cartIndex);
    }
   }
   notifyListeners();

   double getTotalPrice(){
    double total = 0.0;

    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }

      total +=itemTotal*cartItem.quantity;
    }

    return total;
   }

   int getTotalItemCount(){
    int totalItemCount = 0;

    for(CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
   }

   void clearCart(){
    _cart.clear() ;
    notifyListeners();
   }



void updateDeliveryAddress(String newAddress){
  _deliveryAddress = newAddress;
  notifyListeners();
}




String displayCartReceipt(){
  final receipt = StringBuffer();
  receipt.writeln('Here is your receipt');
  receipt.writeln();

String formattedDate =
 DateFormat('yyyy-MM-dd HH:mm:ss').format
 (DateTime.now());
 receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln('======');

  for(final cartItem in _cart){
    receipt.writeln(
      '${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)
      }');
      if(cartItem.selectedAddons.isNotEmpty){
        receipt
        .writeln(( 'Add-ons: ${_formatAddons(cartItem.selectedAddons)}'
        ));
      }
      receipt.writeln();
  }


  receipt.writeln('=======');
  receipt.writeln();
  receipt.writeln('Total Items: ${getTotalItemCount()}');
  receipt.writeln('Total Price: ${_formatPrice(getTotalPrice())}');
receipt.writeln();
receipt.writeln('Delivering to: $deliveryAddress');


  return receipt.toString();
}


String _formatPrice(double price){
  return '\$${price.toStringAsFixed(2)}';
}

String _formatAddons(List<Addon> addons){
  return addons
  .map((addon) => '(${_formatPrice(addon.price)})')
  .join(', ');
}

}

























