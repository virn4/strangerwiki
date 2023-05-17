import 'package:flutter/material.dart';
import 'screens/main-screen.dart';
import 'screens/apresentation-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stranger Wiki',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
        colorScheme: ColorScheme(brightness: Brightness.dark,
        primary: Colors.black, 
        onPrimary:Color.fromARGB(255, 255, 255, 255), 
        secondary: Colors.black, 
        onSecondary: Color.fromARGB( 255, 255, 49, 49), 
        error: Color.fromARGB(255, 255, 222, 89),
        onError: Colors.black, 
        background: Colors.black, 
        onBackground: Colors.black, 
        surface: Color.fromARGB(255, 0, 0, 0), 
        onSurface: Colors.white)
      ),
      home: Scaffold(body: MyHomePage(),),
    );
  }
}




