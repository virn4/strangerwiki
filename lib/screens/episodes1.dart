
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stranger Wiki',
      theme: ThemeData(

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
      
    );
  }
  
}