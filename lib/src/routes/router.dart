import 'package:estrutura_basica_flutter/src/routes/routing_constants.dart';
import 'package:estrutura_basica_flutter/src/screens/home/home.dart';
import 'package:estrutura_basica_flutter/src/screens/login/login.dart';
import 'package:estrutura_basica_flutter/src/screens/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

RouteFactory rotas() {
  return (settings) {
    // Object? obj = settings.arguments;
    Widget screen;

    switch (settings.name) {
      case LoginRoute:
        screen = LoginPage();
        break;
      case HomeRoute:
        screen = HomePage(title: "Estrutura Basica");
        break;
      case SplashRoute:
        screen = Splash();
        break;
      default:
        screen = LoginPage();
    }

    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}