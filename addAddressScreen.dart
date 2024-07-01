import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:villa/components/commonTextfield.dart';
import 'package:villa/components/locationServices.dart';
// import 'package:ubereats/constant/constant.dart';
// import 'package:ubereats/controller/provider/profileProvider.dart';
// import 'package:ubereats/model/userAddressModel.dart';
// import 'package:ubereats/model/userModel.dart';
// import 'package:ubereats/services/imagesServices.dart';
// import 'package:ubereats/services/locationServices.dart';
// import 'package:ubereats/services/userDataCRUDServices.dart';
// import 'package:ubereats/view/home/homeScreen.dart';
// import 'package:ubereats/view/widgets/commonElevatedButton.dart';
// import 'package:ubereats/view/widgets/commonTextfield.dart';
// import 'package:ubereats/view/widgets/toastServices.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
    TextEditingController nameController = TextEditingController();
   TextEditingController houseNoController = TextEditingController();
    TextEditingController apartmentController = TextEditingController();
     TextEditingController saveAddressAsController = TextEditingController();
  CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(37.4, -122),
    zoom: 14,
  );

  Completer<GoogleMapController> googleMapController = Completer();
  GoogleMapController? mapController;
  bool registerButtonPressed = false;
  @override
  Future<Widget>(BuildContext context) async {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey,automaticallyImplyLeading: false,
        leading: IconButton(onPressed: ()=> Navigator.pop(context),
         icon: FaIcon(FontAwesomeIcons.arrowLeftLong,color: Colors.black,)),),
        body: ListView(padding: EdgeInsets.symmetric(horizontal: 3,vertical: 2),children: [
          // SizedBox(height: 4,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Add Addkkkkress',style: TextStyle(fontSize: 23,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
           ),
              SizedBox(height: 4,),
              SizedBox(
                height: 400,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GoogleMap(
                    initialCameraPosition: initialCameraPosition,
                    mapType: MapType.normal,
                    myLocationButtonEnabled: true,
                    myLocationEnabled: true,
                    zoomControlsEnabled: true,
                    zoomGesturesEnabled: true,
                    onMapCreated: (GoogleMapController controller) async {
                      googleMapController.complete(controller);
                      mapController = controller;
                      Position crrPosition = await LocationServices.getCurrentLocation();
                      LatLng crrLatLng = LatLng(crrPosition.latitude, crrPosition.longitude);
                      CameraPosition cameraPosition = CameraPosition(
                        target: crrLatLng,
                        zoom: 14,
                      );
                      mapController!.animateCamera(
                        CameraUpdate.newCameraPosition(cameraPosition),
                      );
                    },
                  ),
                ),
              ),
      
        SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CommonTextfield(
                  controller: houseNoController,
                  title: 'House no.',
                  hintText: 'House/ Flat/ Block no.',
                  keyboardType: TextInputType.name,
                ),
              ),
      
      
      
              
        SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CommonTextfield(
                  controller: apartmentController,
                  title: 'Apartment',
                  hintText: 'Apartment/Road/Area(optional)',
                  keyboardType: TextInputType.name,
                ),
              ),
      
      
      SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CommonTextfield(
                  controller: saveAddressAsController,
                  title: 'Save Address as',
                  hintText: 'Work/ Home/ Family',
                  keyboardType: TextInputType.name,
                ),
              ),

                  ]
        )
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
      
      // SizedBox(height: 4,),
      // CommonElevatedButton(child: registerButtonPressed? CircularProgressIndicator(color: Colors.white,)
      // :Text('Register',style: TextStyle(color: Colors.white),), onPressed: ()async{
      
      
      //   Navigator.push(
      // context,
      // MaterialPageRoute(builder: (context) => HomeScreen()),
      //   );
      //   setState(() {
      // registerButtonPressed = true;
      //   });
      // List<String> urls =
      // await ImageServices.uploadImagesToFirebaseStorageNGetURL(
      //   images:[context.read<ProfileProvider>().profileImage!] ,
      //    context: context,
      //    );
      
      // UserModel userData = UserModel(name: nameController.text.trim(),
      //  profilePicURL: urls[0], 
      //  userID: auth.currentUser!.uid
      //  );
      
      
      //  Position location = await LocationServices.getCurrentLocation();
      //  String addressID = uuid.v1().toString();
      //  UserAddressModel addressData = UserAddressModel(
      //   addressID: addressID,
      //   userID: auth.currentUser!.uid,
      //   latitude: location.latitude,
      //    longitude: location.longitude, 
      //    roomNo:houseNoController.text.trim(),
      // apartment: apartmentController.text.trim(),
      //  addressTitle: saveAddressAsController.text.trim(),
      //   uploadTime: DateTime.now(),
      //    isActive: false,
      //    );
      
      //  await  UserDataCRUDServices.addAddress(addressData, context);
      //  Navigator.pop(context);
      //  context.read<ProfileProvider>().fetchUserAddresses();
      //  ToastService.sendScaffoldAlert(msg: 'Address Added Successfully',toastStatus: 'SUCCESS',context: context);
      // },
      
      // )
        // ],
        // ),
    //   ),
    // );



//         ]
//         )
//       )
//     );
//   }
// }
