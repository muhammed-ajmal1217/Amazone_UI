import 'package:amazoneui/screens/accounts.dart';
import 'package:amazoneui/screens/cart.dart';
import 'package:amazoneui/screens/home.dart';
import 'package:amazoneui/screens/menu.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _selectedIndex = 0;

  List <Widget> _screens =[
    HomePage(),
    Accounts(),
    MyCart(),
    Menu(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: CustomNavigationBar(
          isFloating: true,
          backgroundColor: Colors.white,
          iconSize: 30,
          elevation: 0,
          selectedColor: Color.fromARGB(255, 23, 92, 119),
          unSelectedColor: Colors.grey,
          items: [
            CustomNavigationBarItem(icon: Icon(Icons.home_outlined)),
            CustomNavigationBarItem(icon: Icon(Icons.person_2_outlined)),
            CustomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined)),
            CustomNavigationBarItem(icon: Icon(Icons.menu)),
          ],
          onTap: (i){
            setState(() {
              _selectedIndex=i;
            });
            
          },
          currentIndex: _selectedIndex,
          ),
      ),
    );
  }
}