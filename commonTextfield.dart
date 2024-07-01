import 'package:flutter/material.dart';

class CommonTextfield extends StatelessWidget {
  const CommonTextfield({super.key,
   required this.controller, required this.title, 
   required this.hintText, required this.keyboardType, });

  final TextEditingController controller;
  final String title;
  final String hintText;
  final TextInputType keyboardType;
  
  

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title,style: TextStyle(fontWeight: FontWeight.bold),),

        SizedBox(height: 12,),

        TextField(controller: controller,
        cursorColor: Colors.black,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 4),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.grey),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.black),
        ),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.grey),
        
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.black),
        ),
        ),),
      ],
    );
  }
}