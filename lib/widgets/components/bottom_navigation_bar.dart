import 'package:flutter/material.dart';

import '../../screens/screens.dart';
import '../../utils/images.dart';

class BottomNavigationBarMuster extends StatefulWidget {
  const BottomNavigationBarMuster({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarMuster> createState() =>
      _BottomNavigationBarMusterState();
}

class _BottomNavigationBarMusterState extends State<BottomNavigationBarMuster> {
  final List _widgetOptions = [
    const HomeScreen(),
    const FavouriteScreen(),
    const CartScreen(),
    UserProfileScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedFontSize: 12.0,
        elevation: 10.0,
        type: BottomNavigationBarType.fixed,
        enableFeedback: true,
        unselectedItemColor: Colors.black,
        // selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Image.asset(
                    ImageResources.bottomHomeImage,
                    fit: BoxFit.cover,
                    color: Theme.of(context).primaryColor,
                  )
                : Image.asset(
                    ImageResources.bottomHomeImage,
                    fit: BoxFit.cover,
                    color: Colors.black,
                  ),
            label: 'Home',
            // activeIcon: Image.asset(ImageResources.bottomHomeImage),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Image.asset(
                    ImageResources.bottomHeartImage,
                    fit: BoxFit.cover,
                    color: Theme.of(context).primaryColor,
                  )
                : Image.asset(
                    ImageResources.bottomHeartImage,
                    fit: BoxFit.cover,
                    color: Colors.black,
                  ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Image.asset(
                    ImageResources.bottomCartImage,
                    fit: BoxFit.cover,
                    color: Theme.of(context).primaryColor,
                  )
                : Image.asset(
                    ImageResources.bottomCartImage,
                    fit: BoxFit.cover,
                    color: Colors.black,
                  ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Image.asset(
                    ImageResources.bottomUsersImage,
                    fit: BoxFit.cover,
                    color: Theme.of(context).primaryColor,
                  )
                : Image.asset(
                    ImageResources.bottomUsersImage,
                    fit: BoxFit.cover,
                    color: Colors.black,
                  ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
