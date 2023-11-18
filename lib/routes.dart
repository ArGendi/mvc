import 'package:flutter/material.dart';
import 'package:mvc/constants.dart';
import 'package:mvc/screens/home_screen.dart';
import 'package:mvc/screens/profile_screen.dart';

class Routes{
  static Route? getRoute(RouteSettings settings){
    switch(settings.name){
      case homeRoute: return MaterialPageRoute(builder: (context) => HomeScreen());
      case profileRoute: return MaterialPageRoute(builder: (context) => ProfileScreen());
    }
  }
}