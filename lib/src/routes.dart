// Abstract class used for calling static assets directly without instantiating the class from another widget
import 'package:farmers_market/src/screens/landing.dart';
import 'package:farmers_market/src/screens/login.dart';
import 'package:farmers_market/src/screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  // Returns Material Routes
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

  // Return Cupertino Routes
  static CupertinoPageRoute cupertinoRoutes(RouteSettings settings){
    switch(settings.name) {
      case "/":
        return CupertinoPageRoute(builder: (context) => Landing());
        break;

      case "/signup":
        return CupertinoPageRoute(builder: (context) => SignUp());
        break;

      case "/login":
        return CupertinoPageRoute(builder: (context) => Login());
        break;
      default:
        return CupertinoPageRoute(builder: (context) => Login());
        break;
    }
  }
}

