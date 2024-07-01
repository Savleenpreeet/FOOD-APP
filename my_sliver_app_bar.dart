import 'package:flutter/material.dart';
import 'package:villa/pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {

  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
       expandedHeight: 340,
       collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) =>CartPage(),
          ),
          );
      }, icon: Icon(Icons.shopping_cart))],
      backgroundColor: Colors.white,
      title: Text('Sunset Diner',style: TextStyle(color: Colors.pink),),
      flexibleSpace: FlexibleSpaceBar(
        background: child,
         title: title,
         centerTitle: true,
         titlePadding: EdgeInsets.only(left: 0,right: 0,top: 0),
         expandedTitleScale: 1,
      ),
      
    );
  }
}