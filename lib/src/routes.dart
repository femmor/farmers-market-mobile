// Abstract class used for calling static assets directly without instantiating the class from another widget
import 'package:farmers_market/src/screens/landing.dart';
import 'package:farmers_market/src/screens/login.dart';
import 'package:farmers_market/src/screens/signup.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static MaterialPageRoute materialRoutes(RouteSettings settings){
    switch(settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => Landing());
        break;

      case "/signup":
        return MaterialPageRoute(builder: (context) => SignUp());
        break;

      case "/login":
        return MaterialPageRoute(builder: (context) => Login());
        break;
      default:
        return MaterialPageRoute(builder: (context) => Login());
        break;
    }
  }
}

