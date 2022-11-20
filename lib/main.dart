import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/bottom_bar.dart';
import 'package:ticket_booking/utils/app_styles.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
      ),
      title: 'Ticket Booking',
      home: const BottomScreen(),
    );
  }
}


