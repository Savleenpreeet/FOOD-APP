import 'dart:ui';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:villa/authScreens/otpScreen.dart';
// import 'package:flutter/widgets.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:provider/provider.dart';
// import 'package:ubereatsresturant/controller/provider/authProvider/mobileAuthProvider.dart';
// import 'package:ubereatsresturant/services/authServices/mobileAuthServices.dart';
// import 'package:ubereatsresturant/view/authScreens/otpScreen.dart';

class MobileLoginScreen extends StatefulWidget {
  const MobileLoginScreen({super.key});

  @override
  State<MobileLoginScreen> createState() => _MobileLoginScreenState();
}

class _MobileLoginScreenState extends State<MobileLoginScreen> {
  String selectedCountry = '+91';
  TextEditingController mobileController = TextEditingController();
  bool receiveOTPButtonPressed = false;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        receiveOTPButtonPressed = false;
      });
     });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
           padding: EdgeInsets.symmetric(horizontal: 40,vertical: 54),
          children: [
            Text('Enter your mobile number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
            ),

      SizedBox(height: 8,),




Row(children: [
  InkWell(
    onTap: (){
      showCountryPicker(
  context: context,
  showPhoneCode: true, // optional. Shows phone code before the country name.
  onSelect: (Country country) {
    setState(() {
       selectedCountry = '+${country.phoneCode}';
    });
    //  print('Select country: ${country.displayName}');
  },
);
    },
    child: Container(
    height: 40,
    width: 55,
    alignment: Alignment.center,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.black),
    color: const Color.fromARGB(255, 238, 217, 217), 
    ),child: Text(selectedCountry,style: TextStyle(fontWeight: FontWeight.bold),),
    
    ),
  ),
  SizedBox(width: 10,),
  SizedBox(width: 264, height: 44,  child: TextField(controller: mobileController, cursorColor: Colors.black,
  keyboardType: TextInputType.number,
  
decoration: InputDecoration(
  hintText: 'Mobile Number',
  hintStyle: TextStyle(color: Colors.black,
),filled: true, fillColor: const Color.fromARGB(255, 231, 228, 228),
border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.grey),
),
focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.black),
),
disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.grey),
),
enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.grey),
),
  ),
  ),
  ),
 
  
  ],),


       SizedBox(height: 8,),
                ElevatedButton(onPressed: (){
 Navigator.push(context, PageTransition(child: OTPScreen(), type: PageTransitionType.rightToLeft));

setState(() {
  receiveOTPButtonPressed = true;
});

                  // context.read<MobileAuthProvider>().updateMobileNumber(
                  //   '$selectedCountry${mobileController.text.trim()}'
                  // );
                  // MobileAuthServices.receiveOTP(context: context, mobileNo: 
                  // '$selectedCountry${mobileController.text.trim()}');
                }, 
                style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 169, 168, 166),
                ),
                child:  receiveOTPButtonPressed? CircularProgressIndicator(color: Colors.white,): Stack(
                  children: [
                  Align(alignment: Alignment.center,
                  child: 
                       Text('Next',style: TextStyle(fontSize: 16),),),
                    
                    
                    Positioned(
                      right: 10,
                      child: Icon(Icons.arrow_forward,color: Colors.black,size: 20,))
                  ],
                ),


                
                ),
                SizedBox(height: 8,),
                Text('By proceeding you consent to get calls , Whatsapp or SMS messages , including by automated means from uber & its affiliates to  number provided.',
                style: TextStyle(color: const Color.fromARGB(255, 129, 126, 126),fontSize: 17),
                ),
SizedBox(height: 8,),
                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey,),
                    ),
                  
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: Text('or',style: TextStyle(color: Colors.grey,
                  fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(child: Divider(color: Colors.grey,),
                ),
                  ]
                ),
            SizedBox(height: 7,),
            
            ElevatedButton(onPressed: (){}, 
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 140, 164, 175),minimumSize: Size(16, 45)),
            child: Stack(children: [Align(alignment: Alignment.center,child: Text('Continue with Google',style: TextStyle(fontSize: 17,
            color: Colors.white),),
            ),
            Positioned(left: 3, child: FaIcon(FontAwesomeIcons.google,color: Colors.red,),),
            ],
            )),
            
              ],
            )
          
        ),
      
    );
  }
}