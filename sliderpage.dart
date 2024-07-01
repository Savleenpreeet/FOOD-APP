import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:villa/components/my_description_box.dart';
import 'package:villa/components/my_sliver_app_bar.dart';

class SlideImages extends StatefulWidget {
  const SlideImages({super.key});

  @override
  State<SlideImages> createState() => _SlideImagesState();
}

class _SlideImagesState extends State<SlideImages> {
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     
//       onTap: () {
//   Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => const AccountScreen()),
//   );
// },

      child: SafeArea(
        child: Scaffold(backgroundColor:
         Color.fromARGB(255, 212, 228, 230),
          body: ListView(padding: EdgeInsets.symmetric(horizontal: 14,vertical: 3
          ),
          children: [
            SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Current Location',style:
                 TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
                 fontStyle: FontStyle.italic),
                ),
                
                Icon(Icons.shopping_cart,size: 30, color: Colors.blue,)
              ],
            ),
          ),
      
          SizedBox(height: 8,),
          Row(
            children: [
              Expanded(
              child: Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 218, 215, 215)),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('American', style: TextStyle(fontSize: 17),
                    ),
                  ),
                  
                  Container(height: 100,width: 90,
      
                    child: Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Image(image: AssetImage('assets/images/Categories/american.jpg'),
                       ),
                    ),
                  ),
                  ],
                ), 
              ),
            ),
      SizedBox(width: 12,),
             Expanded(
              child: Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 218, 215, 215)),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('Grocery', style: TextStyle(fontSize: 17),
                    ),
                  ),
                  
                  Container(height: 100,width: 90,
      
                    child: Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Image(image: AssetImage('assets/images/Categories/grocry.png'),
                       ),
                    ),
                  ),
                  ],
                ), 
              ),
            ),
            ],
          ),
      
          
      SizedBox(height: 10,),
      
      // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: categories.map((e) => Column(children: [Container(
      // height: 100,width: 85, decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(5),
      //   color: Color.fromARGB(255, 199, 197, 197)),
      //   child: Image(image: AssetImage(e[0])),
      //   ),
      
      //   SizedBox(height: 2,),
      //   Text(e[1], style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
      //   ],)).toList(),
      // ),
      
      SizedBox(height: 9,),
      Divider(color: Colors.grey, thickness: 3,),
      SizedBox(height: 10,),
          GestureDetector(
              onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  MyDescriptionBox()),
  );
},
            child: CarouselSlider( 
                items: [ 
                    
                  //1st Image of Slider 
                  Container( height: 270,width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),
                            color:  Color.fromARGB(255, 212, 228, 230),
          // color: const Color.fromARGB(255, 246, 241, 241), 
                      image: DecorationImage( 
                        
                        
    image: AssetImage('assets/images/Categories/sb1.jpg'),
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //2nd Image of Slider 
                  Container(  height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),
                        // color: const Color.fromARGB(255, 246, 241, 241),
                      //  color: Colors.grey, 
                      // color: Colors.yellow,
                    color:  Color.fromARGB(255, 212, 228, 230),
                      image: DecorationImage( 
                         image: AssetImage('assets/images/Categories/sb2.jpg'),
                        
                        
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //3rd Image of Slider 
                  Container(  height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),
                            color:  Color.fromARGB(255, 212, 228, 230), 
                        // color: const Color.fromARGB(255, 246, 241, 241),
                      // color: Colors.grey, 
                      image: DecorationImage(  
                        image: AssetImage('assets/images/Categories/sb3.jpg'),
                      //  / image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //4th Image of Slider 
                  Container( height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),
                            color:  Color.fromARGB(255, 212, 228, 230),
                        // color: const Color.fromARGB(255, 246, 241, 241),
                      //  color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/sb4.jpeg'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //5th Image of Slider 
                  Container(  height: 270, width: 4000,
                  padding: EdgeInsets.only(top: 5,bottom: 5),
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),
                            color:  Color.fromARGB(255, 212, 228, 230),
                        // color: const Color.fromARGB(255, 246, 241, 241),
                      //  color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/b5.jpg'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
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
          ), 
Row(children: [ 
  Text(
"Cheese it up! This BURGER is 'grate'!",style: TextStyle(
    fontStyle: FontStyle.italic,color: Colors.purple,fontSize: 20
  ), ),
  
  ],
  ),


  // pizzzzzzzzzzzzzzzaaaaaaaaaaaa


 SizedBox(height: 10,),
          GestureDetector(
              onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyDescriptionBox()),
  );
},
            child: CarouselSlider( 
                items: [ 
                    
                  //1st Image of Slider 
                  Container( height: 270,width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),
                            color:  Color.fromARGB(255, 212, 228, 230),
                        // color: const Color.fromARGB(255, 246, 241, 241),
                      //  color: Colors.grey, 
                      image: DecorationImage( 
                        
                        
    image: AssetImage('assets/images/Categories/p2.jpg'),
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //2nd Image of Slider 
                  Container(  height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),
                            color:  Color.fromARGB(255, 212, 228, 230),
                        // color: const Color.fromARGB(255, 246, 241, 241),
                      //  color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/p5.jpg'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //3rd Image of Slider 
                  Container(  height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),
                            color:  Color.fromARGB(255, 212, 228, 230),
                        // color: const Color.fromARGB(255, 246, 241, 241),
                      //  color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/p.webp'),
                      //  / image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //4th Image of Slider 
                  Container( height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),
                            color:  Color.fromARGB(255, 212, 228, 230),
                        // color: const Color.fromARGB(255, 246, 241, 241),
                      //  color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/p3.jpeg'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //5th Image of Slider 
                  Container(  height: 270, width: 4000,
                   padding: EdgeInsets.only(top: 13,bottom: 13),
                    margin: EdgeInsets.all(16.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0), 
                            color:  Color.fromARGB(255, 212, 228, 230),
                        // color: const Color.fromARGB(255, 246, 241, 241),
                      // color: Colors.white10,
                      // color: const Color.fromARGB(255, 135, 77, 77), 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/p4.webp'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
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
          ), 
Row(children: [ 
  Text(
"PIZZA , A little slice of 'Heaven'!",style: TextStyle(
    fontStyle: FontStyle.italic,color: Colors.blue,fontSize: 20
  ), ),
  
  ],
  ),



// ppassssssttttaaa


 SizedBox(height: 20,),
          GestureDetector(
              onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MyDescriptionBox()),
  );
},
            child: CarouselSlider( 
                items: [ 
                    
                  //1st Image of Slider 
                  Container( height: 270,width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),  color:  Color.fromARGB(255, 212, 228, 230),
                      // color: Colors.grey, 
                      image: DecorationImage( 
                        
                        
    image: AssetImage('assets/images/Categories/1p.jpeg'),
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //2nd Image of Slider 
                  Container(  height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),  color:  Color.fromARGB(255, 212, 228, 230),
                      // color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/2p.jpg'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //3rd Image of Slider 
                  Container(  height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),  color:  Color.fromARGB(255, 212, 228, 230),
                      // color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/3p.jpg'),
                      //  / image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //4th Image of Slider 
                  Container( height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),  color:  Color.fromARGB(255, 212, 228, 230),
                      // /color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/4p.jpeg'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //5th Image of Slider 
                  Container(  height: 290, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0), 
                      // border: Border.all(color: Colors.blue),
                       color:  Color.fromARGB(255, 212, 228, 230),
                      // color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/5p.webp'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
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
          ), 
Row(children: [ 
  Text(
"PASTA is my only guilty pleasure",style: TextStyle(
    fontStyle: FontStyle.italic,color: Colors.red,fontSize: 20
  ), ),
  
  ],
  ),





SizedBox(height: 20,),
          GestureDetector(
              onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MyDescriptionBox()),
  );
},
            child: CarouselSlider( 
                items: [ 
                    
                  //1st Image of Slider 
                  Container( height: 270,width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),  color:  Color.fromARGB(255, 212, 228, 230),
                      // color: Colors.grey, 
                      image: DecorationImage( 
                        
                        
    image: AssetImage('assets/images/Categories/1p.jpeg'),
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //2nd Image of Slider 
                  Container(  height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),  color:  Color.fromARGB(255, 212, 228, 230),
                      // color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/2p.jpg'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //3rd Image of Slider 
                  Container(  height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),  color:  Color.fromARGB(255, 212, 228, 230),
                      // color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/3p.jpg'),
                      //  / image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //4th Image of Slider 
                  Container( height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),  color:  Color.fromARGB(255, 212, 228, 230),
                      // /color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/4p.jpeg'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //5th Image of Slider 
                  Container(  height: 290, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0), 
                      // border: Border.all(color: Colors.blue),
                       color:  Color.fromARGB(255, 212, 228, 230),
                      // color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/5p.webp'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
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
          ), 
Row(children: [ 
  Text(
"PASTA is my only guilty pleasure",style: TextStyle(
    fontStyle: FontStyle.italic,color: Colors.red,fontSize: 20
  ), ),
  
  ],
  ),






// drinks



SizedBox(height: 20,),
          GestureDetector(
              onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MyDescriptionBox()),
  );
},
            child: CarouselSlider( 
                items: [ 
                    
                  //1st Image of Slider 
                  Container( height: 270,width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),  color:  Color.fromARGB(255, 212, 228, 230),
                      // color: Colors.grey, 
                      image: DecorationImage( 
                        
                        
    image: AssetImage('assets/images/Categories/1p.jpeg'),
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //2nd Image of Slider 
                  Container(  height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),  color:  Color.fromARGB(255, 212, 228, 230),
                      // color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/2p.jpg'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //3rd Image of Slider 
                  Container(  height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),  color:  Color.fromARGB(255, 212, 228, 230),
                      // color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/3p.jpg'),
                      //  / image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //4th Image of Slider 
                  Container( height: 270, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0),  color:  Color.fromARGB(255, 212, 228, 230),
                      // /color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/4p.jpeg'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
                        fit: BoxFit.contain, 
                      ), 
                    ), 
                  ), 
                    
                  //5th Image of Slider 
                  Container(  height: 290, width: 400,
                    margin: EdgeInsets.all(6.0), 
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(8.0), 
                      // border: Border.all(color: Colors.blue),
                       color:  Color.fromARGB(255, 212, 228, 230),
                      // color: Colors.grey, 
                      image: DecorationImage(  image: AssetImage('assets/images/Categories/5p.webp'),
                        // image: NetworkImage("ADD IMAGE URL HERE"), 
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
          ), 
Row(children: [ 
  Text(
"PASTA is my only guilty pleasure",style: TextStyle(
    fontStyle: FontStyle.italic,color: Colors.red,fontSize: 20
  ), ),
  
  ],
  ),
         ] ),
          ),
        ),
    );





  }
}
