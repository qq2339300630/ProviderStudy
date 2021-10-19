

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstudy/provider_setup.dart';
import 'route_paths.dart';
import 'router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Flutter MVVM',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        initialRoute: RoutePaths.LOGIN,
        onGenerateRoute: ARouter.generateRoute,
      ),
    );
  }
}
