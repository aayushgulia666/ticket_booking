import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {

   int _selectedIndex=0;

   static const List<Widget>_widgetOptions = <Widget>[
     Text("Home"),
     Text("Search"),
     Text("Ticket"),
     Text("Profile")
   ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket Booking'),
      ),

      body: Center(
          child: _widgetOptions[_selectedIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            _selectedIndex=index;
          });
        },
        currentIndex: _selectedIndex,

        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),

        items: const [
          BottomNavigationBarItem(icon: Icon(FluentIcons.home_48_regular), activeIcon: Icon(FluentIcons.home_48_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(FluentIcons.search_48_regular), activeIcon: Icon(FluentIcons.search_48_filled), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(FluentIcons.ticket_diagonal_28_regular), activeIcon: Icon(FluentIcons.ticket_diagonal_28_filled), label: 'Ticket'),
          BottomNavigationBarItem(icon: Icon(FluentIcons.person_48_regular), activeIcon: Icon(FluentIcons.person_48_filled), label: 'Profile')
        ],

      ),
    );
  }
}
