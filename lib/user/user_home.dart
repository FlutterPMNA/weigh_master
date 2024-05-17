import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weigh_master/constants/custom_colors.dart';
import 'package:weigh_master/user/cart_items.dart';
import 'package:weigh_master/user/user_home_details.dart';
import 'package:weigh_master/user/user_notifications.dart';
import 'package:weigh_master/user/user_profile.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {

  List<Widget> pages=[
    const UserHomeDetails(),
    const CartItems(),
    const UserNotifications(),
    const UserProfile(),
  ];


  int selectedIndex= 0;
  void onItemTapped(index){
    setState(() {
      selectedIndex= index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_sharp), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
          ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black,
        backgroundColor: CustomColors.backgroundGreen,
      ),
    );
  }
}
