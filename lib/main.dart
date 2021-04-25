import 'package:flutter/material.dart';
import 'screen/home_screen.dart';
import 'screen/signin_screen.dart';
import 'screen/welcome_screen.dart';

void main() async {
  // await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Watch',
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.lightGreenAccent,
        // fontFamily: 'SourceSansPro',
        textTheme: TextTheme(
          display2: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 45.0,
            // fontWeight: FontWeight.w400,
            color: Colors.orange,
          ),
          button: TextStyle(
            // OpenSans is similar to NotoSans but the uppercases look a bit better IMO
            fontFamily: 'OpenSans',
          ),
          caption: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            color: Colors.deepPurple[300],
          ),
          overline: TextStyle(fontFamily: 'NotoSans'),
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => WelComeScreen(),
        '/home': (BuildContext context) => MyHomePage(),
        '/sign_in': (BuildContext context) => SignIn(),
      },
    );
  }
}
