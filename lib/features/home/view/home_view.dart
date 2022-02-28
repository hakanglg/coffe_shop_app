import 'package:coffe_shop_app/core/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/base/base_state.dart';

part 'home_string_values.dart';

class HomeView extends StatefulWidget with BaseState {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  _HomeStringValues values = _HomeStringValues();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: context.lowValue),
          child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/ic_1.png")),
        ),
        title: Wrap(
          children: [
            Icon(
              Icons.location_on,
              color: ColorConstants.instance.green,
            ),
            Text(
              values.locationText,
              style: context.textTheme.bodyText1!
                  .copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: context.lowValue),
            child: Icon(
              Icons.notifications_active_outlined,
              color: ColorConstants.instance.brown,
            ),
          )
        ],
      ),
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
  Container(
    color: Colors.red,
  ),
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
