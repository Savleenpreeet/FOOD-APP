import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:villa/auth/auth_services.dart';
import 'package:villa/components/my_button.dart';
import 'package:villa/components/my_textfield.dart';
import 'package:villa/pages/home_page.dart';
import 'package:villa/pages/imageSlider.dart';
import 'package:villa/pages/sliderpage.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  LoginPage ({super.key, this.onTap}); 
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

 void login()async{
  final _authService = AuthService();

  try{
    await _authService.signInWithEmailPassword(
      emailController.text,
       passwordController.text);

  }
catch(e){
  showDialog(context: context,
   builder: (context) => AlertDialog(
    title: Text(e.toString()),
   ),
   );
}

  // Navigator.push(context, MaterialPageRoute(
  //   builder: (context) => HomePage(),
  // ),);
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 232, 232),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            //  SizedBox(height: 20),
             Text('WELCOME TO',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:  Colors.pink,fontStyle: FontStyle.italic),),
             const SizedBox(height: 10),
               
                      Text('VILLA CAFE',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.pink,fontStyle: FontStyle.italic),),
                             
              
SizedBox(height: 20,),


            Icon(Icons.lock_open_rounded, size: 78),
            // SizedBox(height: 20),
            // Text('Food Delivery app'),
            SizedBox(height: 20),
            MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),

              SizedBox(height: 10),
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            SizedBox(height: 10,),
            MyButton(text: 'Login',onTap: () {
              Navigator.push(context,
               MaterialPageRoute(builder: 
               (context) => ImageSlider(),
                // HomePage(),
               
               ),);
            },),

            SizedBox(height: 25,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text('Not a member? ',style: TextStyle(fontSize: 20,color: Colors.black87),),
                 SizedBox(width: 1,),
                 GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Register now',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),))
              ],
            )
          ],
        ),
      ),
    );
  }
}


    
        
    
  