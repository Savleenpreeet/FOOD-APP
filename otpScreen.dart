import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:villa/pages/home_page.dart';
// import 'package:provider/provider.dart';
// import 'package:ubereatsresturant/controller/provider/authProvider/mobileAuthProvider.dart';
// import 'package:ubereatsresturant/services/authServices/mobileAuthServices.dart';
// import 'package:ubereatsresturant/view/home/homeScreen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpController = TextEditingController();
  StreamController<ErrorAnimationType> errorController = StreamController<ErrorAnimationType>();
int resendOTPCounter = 60;

decreaseOTPCounter() async{
  if(resendOTPCounter >0){
    setState(() {
      resendOTPCounter-=1;
    
    });
    await Future.delayed(Duration(seconds: 1),(){
decreaseOTPCounter();
    });
  }
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPersistentFrameCallback((_) {
      decreaseOTPCounter();
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(
        children: [
          Positioned(left: 29,bottom: 4,
            child: ElevatedButton(onPressed: (){},
             style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 155, 201, 238),),
            child: FaIcon(FontAwesomeIcons.arrowLeft,color: Colors.black,),
            ),
          ),

          Positioned(right: 29,bottom: 4,
            child: ElevatedButton(onPressed: (){
              Navigator.push( context, PageTransition(child: HomePage(),
     type: PageTransitionType.rightToLeft));

              // MobileAuthServices.verifyOTP(context: context, otp: otpController.text.trim());
            },
             style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              backgroundColor: const Color.fromARGB(255, 155, 201, 238),),
            child: Row(
              children: [Text('Next',
              style: TextStyle(fontWeight: FontWeight.bold
              ),), 
              SizedBox(width: 6,),
                FaIcon(FontAwesomeIcons.arrowRight,color: Colors.black,),
              ],
            ),
            ),
          ),
          ],),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 3,vertical: 2),
        children: [
          SizedBox(height: 33,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Enter the 4-digit code sent to you at'
            // ${context.read<MobileAuthProvider>().mobileNumber!}'
            , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
          ),

          SizedBox(height: 8,),
          PinCodeTextField(
            appContext: context,
  length: 6,
  obscureText: false,
  animationType: AnimationType.fade,
  pinTheme: PinTheme(
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5),
    fieldHeight: 50,
    fieldWidth: 40,
    activeFillColor: Colors.white, inactiveColor: Colors.grey, inactiveFillColor: Colors.white
  ),
  animationDuration: Duration(milliseconds: 300),
  backgroundColor: Colors.transparent,
  enableActiveFill: true,
  errorAnimationController: errorController,
  controller: otpController,
  onCompleted: (v) {},
  onChanged: (value) {},
  beforeTextPaste: (text) {
   
    return true;
  },
),

SizedBox(height: 8,),
Padding(
  padding: const EdgeInsets.only(left: 5.0,right: 5),
  child: Row(
    children: [
      Container(height: 30,
        // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: const Color.fromARGB(255, 235, 232, 232)
      ),
      
      child: Padding(
        padding: const EdgeInsets.only(left: 9.0,top: 4,right: 5),
        child: Text('I haven\'t receive a code',style: TextStyle(color: Colors.black),),
      ),
      ),
    ],
  ),
),
        ],
      ),
    );
  }
}