import 'package:flutter/material.dart';
import 'package:villa/auth/auth_services.dart';
import 'package:villa/components/my_button.dart';
import 'package:villa/components/my_textfield.dart';
import 'package:villa/pages/home_page.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
 final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController = TextEditingController();
 // Corrected constructor syntax

void register()async{
  final _authService = AuthService();

  if(passwordController.text == confirmPasswordController.text){
    try{
      await _authService.signUpWithEmailPassword(
        emailController.text,
         passwordController.text,
         );
    }

    catch(e){
      showDialog(context: context,
       builder: (context) => AlertDialog(
        title: Text(e.toString()),
       ),
       );
    }
  }

  else{
    showDialog(context: context, 
    builder: (context)=> AlertDialog(
      title: Text('Password do not match'),
    ),
    );
  }
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 222, 222),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_open_rounded, size: 78),
            SizedBox(height: 20),
            Text('Let\'s create an account for you'),
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

             SizedBox(height: 10),
            MyTextField(
              controller: confirmPasswordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),

            SizedBox(height: 10,),
            MyButton(text: 'Sign Up',onTap: () {
              Navigator.push(context,
             MaterialPageRoute(builder: 
             (context) => HomePage(),),);
            },),

            SizedBox(height: 25,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text('Already have an account? ',style: TextStyle(fontSize: 20,color: Colors.black87),),
                 SizedBox(width: 1,),
                 GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Login now',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),))
              ],
            )
          ],
        ),
      ),
    );
  }
}