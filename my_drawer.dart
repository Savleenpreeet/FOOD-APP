import 'package:flutter/material.dart';
import 'package:villa/account/account.dart';
import 'package:villa/auth/auth_services.dart';
import 'package:villa/components/my_drawer_tile.dart';
import 'package:villa/pages/accountPage.dart';
import 'package:villa/pages/home_page.dart';
import 'package:villa/pages/login_page.dart';
import 'package:villa/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

void logout(){
  final authService = AuthService();
  authService.signOut();
}


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 241, 214, 223),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(Icons.lock_open_rounded,size: 80,),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Colors.white,
            ),
          ),

          MyDrawerTile(text: 'HOME', icon: Icons.home, onTap: () => Navigator.pop(context)
            
          ),

           MyDrawerTile(text: 'PROFILE',
            icon: Icons.person, onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
             MaterialPageRoute(builder: 
             (context) => AccountPage(),),);
          },),
Spacer(),
           MyDrawerTile(text: 'LOGOUT',
            icon: Icons.logout, onTap: () {
            Navigator.push(context,
             MaterialPageRoute(builder: 
             (context) => LoginPage(),),);
          },),
          SizedBox(height: 25,)
        ],
      ),
    );
  }
}