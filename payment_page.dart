import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:villa/components/my_button.dart';
import 'package:villa/pages/delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey =GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';

  String cardHolderName = '';

  String cvvCode = '';
  bool isCvvFocused = false;

  // bool showBackView = false;

  void userTappedPay(){
    if(formKey.currentState!.validate()){
      showDialog(context: context, 
      builder: (context) =>
      AlertDialog(
        title: Text('Confirm Payment'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('Card Number: $cardNumber'),
              Text('Expiry Date: $expiryDate'),
              Text('Card Holder Name: $cardHolderName'),
              Text('CVV: $cvvCode'),
            ],),
        ),

        actions: [
          TextButton(onPressed: () =>
          Navigator.pop(context),
           child: Text('Yes'),
          ),

          TextButton(onPressed: () {
            Navigator.pop(context);
          Navigator.push(context,
          MaterialPageRoute(builder: (context) =>
          DeliveryProgressPage(),
          
          ),
          
          );
          },
           child: Text('Yes'),
          ),
        ],
        
      )
      );
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 211, 206, 206),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 208, 208),
        title: Text('Checkout',style: TextStyle(
          color: Colors.black
        ),),
      ),
      body:  Column(
          children: [
            
            CreditCardWidget(cardNumber: cardNumber,
             expiryDate: expiryDate, 
             cardHolderName: cardHolderName,
              cvvCode: cvvCode, 
              showBackView: isCvvFocused, 
           onCreditCardWidgetChange: (p0) {},
           ),
        
           CreditCardForm(cardNumber: cardNumber,
            expiryDate: expiryDate,
             cardHolderName: cardHolderName,
        cvvCode: cvvCode,
           onCreditCardModelChange: (data){
            setState(() {
        cardNumber = data.cardNumber;
        expiryDate = data.expiryDate;
        
        cardHolderName = data.cardHolderName;
        cvvCode = data.cvvCode;
        // isCvvFocused = data.isCvvFocused;
            });
           },
            formKey: formKey),
        
            Spacer(),
        
         MyButton(text: 'Pay now',
         onTap: () =>
        Navigator.push(context, 
        MaterialPageRoute(builder: (context)
         =>DeliveryProgressPage(),
         ),),
         
         ),
        
        SizedBox(height: 15,),
        
          ],
        ),
      
    );
  }
 }





