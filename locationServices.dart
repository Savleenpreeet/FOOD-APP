import 'dart:math';

import 'package:geolocator/geolocator.dart';

class LocationServices{
  static getCurrentLocation()async{
    LocationPermission permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        getCurrentLocation();

      }
    }

    Position currentPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);
    log(currentPosition.toString() as num);
    return currentPosition;
  }

}