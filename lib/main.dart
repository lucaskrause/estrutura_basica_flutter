import 'package:estrutura_basica_flutter/src/routes/router.dart';
import 'package:estrutura_basica_flutter/src/routes/routing_constants.dart';
import 'package:estrutura_basica_flutter/src/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Gera as rotas para navegação
      onGenerateRoute: rotas(),
      // Quando usa rotas ao invés de passar home, deve se passar initialRoute
      initialRoute: SplashRoute,
    );
  }
}
