import '../../home/view/home_view.dart';
import '../../../core/base/base_state.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:kartal/kartal.dart';

part 'navigation_string_values.dart';

// ignore: must_be_immutable
class NavigationView extends StatefulWidget with BaseState {
  NavigationView({Key? key}) : super(key: key);

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  _NavigationStringValues values = _NavigationStringValues();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_filled),
            label: values.homeNavText,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite_border),
            label: values.favNavText,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart_outlined),
            label: values.cartNavText,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline),
            label: values.profileNavText,
          )
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}

List<Widget> _pages = <Widget>[
  HomeView(),
  Container(
    color: Colors.green,
  ),
  Container(
    color: Colors.purple,
  ),
  Container(
    color: Colors.blue,
  )
];
