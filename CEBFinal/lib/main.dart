import 'package:ceb_care/signup.dart';
import 'package:flutter/material.dart';
import 'Resultpage.dart';
import 'assessByCensus-k.dart';

//import 'complaint.dart';

//import 'ccccc.dart';
import 'LoginScreen.dart';
import 'assessByCensus-k.dart';
import 'gMap.dart';
import 'splash.dart';
import 'startpage.dart';
import 'startpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
      routes: <String, WidgetBuilder>{
        '/assess': (context) => Assess(),
        '/result': (context) => Resultpage(),
        '/login': (context) => LoginScreen(),
        '/startpage': (context) => StartScreen(),
        '/signup': (context) => SignUpPage(),
        '/Map': (context) => GMaps(),
      },
    );
  }
}
