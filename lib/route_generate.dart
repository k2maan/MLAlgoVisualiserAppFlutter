import 'package:algosutra/main.dart';
import 'package:flutter/material.dart';
import 'screens/LinearRegPart1.dart';
import 'screens/LinearRegPart2.dart';
import 'screens/decisionPart1.dart';
import 'screens/decisionPart2.dart';
import 'screens/decisionPart3.dart';
import 'screens/decisionPart4.dart';
import 'screens/menu.dart';

class RouteGenerate {
  // ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/HomePage':
        return MaterialPageRoute(builder: (_) => HomePage());

      case '/':
        return MaterialPageRoute(builder: (_) => Algorithm());

//                  case '/IntroToMl':
//                       return MaterialPageRoute(builder:(_)=>IntroToML());

      case '/LinearPart1':
        return MaterialPageRoute(builder: (_) => LinearRegPart1());

      case '/LinearPart2':
        return MaterialPageRoute(builder: (_) => LinearRegPart2());

//                  case '/LinearPart3':
//                        return MaterialPageRoute(builder:(_)=>LinearRegPart3());

      case '/DecisionPart1':
        return MaterialPageRoute(builder: (_) => DecisionPart1());

      case '/DecisionPart2':
        return MaterialPageRoute(builder: (_) => DecisionPart2());

      case '/DecisionPart3':
        return MaterialPageRoute(builder: (_) => DecisionPart3());

      case '/DecisionPart4':
        return MaterialPageRoute(builder: (_) => DecisionPart4());
    }
  }
}
