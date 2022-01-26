import 'package:flutter/material.dart';
import 'tabpage1.dart';
import 'tabpage2.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   late List<Widget> tabchildren; 
      int _currentIndex = 0;
      String maintitle = "Product";

  @override
    void initState() {
      super.initState(); 
      tabchildren = [
        const TabPage1(),
        const TabPage2(),
      ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TMJ Resources"),
      ),
      body: tabchildren[_currentIndex],
      bottomNavigationBar: 
            BottomNavigationBar(
              onTap: onTabTapped, 
              currentIndex: _currentIndex, 
              items: const [
                BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag, 
                  color: Colors.grey), 
                  label: "Product"),
                BottomNavigationBarItem(
                icon: Icon(
                  Icons.person, 
                  color: Colors.grey), 
                  label: "Profile"),
              ],
            ),
    );
  }

  void onTabTapped(int index) { 
    setState(() {
      _currentIndex = index; 
      
      if (_currentIndex == 0) {
      maintitle = "Product";
      }
      if (_currentIndex == 1) { 
        maintitle = "Profile";
      }
    });
  }
}