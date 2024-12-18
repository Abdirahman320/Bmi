import 'package:bmicalculator/page1.dart';
import 'package:bmicalculator/result_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var activeScreen = "screen1";
  void SwitchScreen() {
    setState(() {
      activeScreen = "resul_screen";
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: activeScreen == "screen1"
            ? Screen1(
                startQuiz: SwitchScreen,
              )
            : resultScreen(

            ),
      ),
    );
  }
}
