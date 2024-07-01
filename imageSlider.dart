import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:villa/pages/home_page.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: 
      // Column(children: [Center(child: Text('Grocery available',
      // style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.blue),),
      // ),
      
    //  SizedBox(height: 30,),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
          //   },
             GestureDetector(
                onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
            },
                child: ListView( children: [ 
                    CarouselSlider( 
                        items: [ 
                            
                          //1st Image of Slider  PASTTTTTTTTTTAAAAAAAAAAAA
                          Container(
                            margin: EdgeInsets.all(6.0), 
                            decoration: BoxDecoration( 
                              borderRadius: BorderRadius.circular(8.0),
                               color: Colors.grey, 
                              image: DecorationImage( 
                                image: NetworkImage("https://i.pinimg.com/originals/6b/50/69/6b50698575f53b2838ac1a5f3469bccb.jpg"), 
                                fit: BoxFit.cover, 
                              ), 
                            ), 
                          ), 
                            
                          //2nd Image of Slider 
                          Container(  height: 170,
                            margin: EdgeInsets.all(6.0), 
                            decoration: BoxDecoration( 
                              borderRadius: BorderRadius.circular(8.0), 
                              image: DecorationImage( 
                                image: NetworkImage("https://i.pinimg.com/736x/2b/0e/5a/2b0e5ad07841365dff78a7104763336f.jpg"), 
                                fit: BoxFit.cover, 
                              ), 
                            ), 
                          ), 
                            
                          //3rd Image of Slider 
                          Container(  height: 170,
                            margin: EdgeInsets.all(6.0), 
                            decoration: BoxDecoration( 
                              borderRadius: BorderRadius.circular(8.0), 
                              image: DecorationImage( 
                                image: NetworkImage("https://i.pinimg.com/736x/9a/e7/13/9ae713d3ad855e8323048569d2a6faa8.jpg"), 
                                fit: BoxFit.cover, 
                              ), 
                            ), 
                          ), 
                            
                          //4th Image of Slider 
                          Container(  height: 170,
                            margin: EdgeInsets.all(6.0), 
                            decoration: BoxDecoration( 
                              borderRadius: BorderRadius.circular(8.0), 
                              image: DecorationImage( 
                                image: NetworkImage("https://static.vecteezy.com/system/resources/previews/006/879/854/original/cute-burger-with-quotes-illustration-vector.jpg"), 
                                fit: BoxFit.cover, 
                              ), 
                            ), 
                          ), 
                            
                          //5th Image of Slider 
                          Container( height: 170,
                            margin: EdgeInsets.all(6.0), 
                            decoration: BoxDecoration( 
                              borderRadius: BorderRadius.circular(8.0), 
                              image: DecorationImage( 
                                image: NetworkImage("https://i.pinimg.com/736x/d7/45/12/d745123e6cedf31886d3fe2449a3ac86.jpg"), 
                                fit: BoxFit.cover, 
                              ), 
                            ), 
                          ), 
                  
                    ], 
                        
                      //Slider Container properties 
                        options: CarouselOptions( 
                          height: 180.0, 
                          enlargeCenterPage: true, 
                          autoPlay: true, 
                          aspectRatio: 16 / 9, 
                          autoPlayCurve: Curves.fastOutSlowIn, 
                          enableInfiniteScroll: true, 
                          autoPlayAnimationDuration: Duration(milliseconds: 400), 
                          viewportFraction: 0.8, 
                        ), 
                    ), 
                    
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [Text('Don\'t look for love , Look for BURGER'
            ,style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
            )],),
          ),
                
                SizedBox(height: 15,),
                Divider(color: Colors.black,),
                
                
  //  2222222222222

           
               
               CarouselSlider( 
                      items: [ 
                          
                        //1st Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0),
                             color: Colors.grey, 
                            image: DecorationImage( 
                              image: NetworkImage("https://images.saymedia-content.com/.image/t_share/MTgwODcyMTM0NTIyOTcxNDk2/salad-quotes-and-caption-ideas.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //2nd Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://images.saymedia-content.com/.image/t_share/MTgwODcyMTM0NTIyODQwNDI0/salad-quotes-and-caption-ideas.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //3rd Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://images.saymedia-content.com/.image/t_share/MTgwODcyMTM0NTIzMTY4MTA0/salad-quotes-and-caption-ideas.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //4th Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://i.pinimg.com/originals/21/88/4b/21884b0169e7141c2fb208a21225d8f6.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //5th Image of Slider 
                        Container( height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk1VmJSOBG-jtlkWe2ovihDLnQD1pH8FT8DG6ydCtXVru3_CIV8QkffEWtlF8tzgSMT2A&usqp=CAU"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                
                  ], 
                      
                    //Slider Container properties 
                      options: CarouselOptions( 
                        height: 180.0, 
                        enlargeCenterPage: true, 
                        autoPlay: true, 
                        aspectRatio: 16 / 9, 
                        autoPlayCurve: Curves.fastOutSlowIn, 
                        enableInfiniteScroll: true, 
                        autoPlayAnimationDuration: Duration(milliseconds: 400), 
                        viewportFraction: 0.8, 
                      ), 
                  ), 
              
              Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [Text('All you add is SALAD'
            ,style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
            )],),
          ),
               
                SizedBox(height: 15,),
                Divider(color: Colors.black,),
               
               
               
              //  333333333
               CarouselSlider( 
                      items: [ 
                          
                        //1st Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0),
                             color: Colors.grey, 
                            image: DecorationImage( 
                              image: NetworkImage("https://images.saymedia-content.com/.image/t_share/MjAxOTg1MTczMTU4NTY5OTA3/snack-captions.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //2nd Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://mamalovestocook.com/wp-content/uploads/2022/08/funny-food-quote-1-768x1024.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //3rd Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://i.pinimg.com/736x/20/96/b9/2096b9601743c57cc1ab46b86dfa26f0.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //4th Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://parade.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cq_auto:good%2Cw_1200/MTk3MzYwMDQ3NDMxMzYxNzM1/food-caption.png"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //5th Image of Slider 
                        Container( height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://www.shutterstock.com/image-vector/food-quote-lettering-typography-just-260nw-1734095606.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                
                  ], 
                      
                    //Slider Container properties 
                      options: CarouselOptions( 
                        height: 180.0, 
                        enlargeCenterPage: true, 
                        autoPlay: true, 
                        aspectRatio: 16 / 9, 
                        autoPlayCurve: Curves.fastOutSlowIn, 
                        enableInfiniteScroll: true, 
                        autoPlayAnimationDuration: Duration(milliseconds: 400), 
                        viewportFraction: 0.8, 
                      ), 
                  ), 
               
               
               Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [Text('Hungry? Thirsty? SNACKY??'
            ,style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
            )],),
          ),
                SizedBox(height: 15,),
                Divider(color: Colors.black,),
               

              //  4444444444444
      
                  CarouselSlider( 
                      items: [ 
                          
                        //1st Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0),
                             color: Colors.grey, 
                            image: DecorationImage( 
                              image: NetworkImage("https://i.pinimg.com/736x/d6/37/d3/d637d3c862e0fa87954b77bcd4cee9db.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //2nd Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://i.pinimg.com/564x/f1/29/e2/f129e2c3f06ac09a1220e06c9a34fbc3.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //3rd Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://i.pinimg.com/736x/80/17/9e/80179e92c415c99ae46a9773f7adc81e.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //4th Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://images.saymedia-content.com/.image/t_share/MTgxNDA5NDM0MTI2NTI2NDEx/milkshake-quotes-and-caption-ideas.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //5th Image of Slider 
                        Container( height: 170,                    
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR67Uo59p8eIsl3LUk1-jHa_lP5Eptck9hCUASTkb_uJU6v7cEl8Ly2qIL4bR2fqs_BUqQ&usqp=CAU"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                
                  ], 
                      
                    //Slider Container properties 
                      options: CarouselOptions( 
                        height: 180.0, 
                        enlargeCenterPage: true, 
                        autoPlay: true, 
                        aspectRatio: 16 / 9, 
                        autoPlayCurve: Curves.fastOutSlowIn, 
                        enableInfiniteScroll: true, 
                        autoPlayAnimationDuration: Duration(milliseconds: 400), 
                        viewportFraction: 0.8, 
                      ), 
                  ), 
              
                
               

 Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [Text('Want some midnight SHAKES...'
            ,style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
            )],),
          ),
               


 SizedBox(height: 15,),
                Divider(color: Colors.black,),





              //  5555555555555555555

              
                  CarouselSlider( 
                      items: [ 
                          
                        //1st Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0),
                             color: Colors.grey, 
                            image: DecorationImage( 
                              image: NetworkImage("https://images.saymedia-content.com/.image/t_share/MTgxMzM1OTkzMTM4MjkxODE1/dessert-quotes-and-caption-ideas.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //2nd Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://www.shutterstock.com/image-vector/calories-dont-count-on-weekend-600nw-521760412.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //3rd Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://i.pinimg.com/originals/74/e7/14/74e714ab89d509e55c0f4b6e2cd57ac6.png"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //4th Image of Slider 
                        Container(  height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR52A6FXqpil4ULb4NhvREkRhHS16iqzwwJ51fVrGZk3Q&s"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                          
                        //5th Image of Slider 
                        Container( height: 170,
                          margin: EdgeInsets.all(6.0), 
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(8.0), 
                            image: DecorationImage( 
                              image: NetworkImage("https://i.pinimg.com/736x/27/df/61/27df61ab680f4dfe7861cae1d010ddb9.jpg"), 
                              fit: BoxFit.cover, 
                            ), 
                          ), 
                        ), 
                         ], 
                      
                    //Slider Container properties 
                      options: CarouselOptions( 
                        height: 180.0, 
                        enlargeCenterPage: true, 
                        autoPlay: true, 
                        aspectRatio: 16 / 9, 
                        autoPlayCurve: Curves.fastOutSlowIn, 
                        enableInfiniteScroll: true, 
                        autoPlayAnimationDuration: Duration(milliseconds: 400), 
                        viewportFraction: 0.8, 
                      ), 
                  ), 
                

                Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [Text('Life is short , eat DESSERT first!!'
            ,style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
            )],),
          ),

                SizedBox(height: 15,),
                Divider(color: Colors.black,),
                ]
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                ),),



  






 
          
















//            SizedBox(height: 40,),
//           Expanded(
//             child: 






















//            SizedBox(height: 40,),
//           Expanded(

                 
              
//                   // Text("Pasta is always a good idea - it\'s my penne-pleasure!")
//                 ], 
                
//               ),
              
//             )
//           ),
          



























         
                          
                   
          




                
                ),
             );
    
    
  } 
}