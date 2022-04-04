import 'package:demo/ui/routing/route_generator.dart';
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
      onGenerateRoute: RouteGenerator.onGenerateRoute,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Container(
            color: Colors.red,
            child: Center(
              child: Text("Unknown route ${settings.name}"),
            ),
          ),
        ),
      ),
      // home: const MyHomePage(),
    );
  }
}
