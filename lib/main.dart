
import 'package:emergency_travel/src/ui/screens/login_screen.dart';
import 'package:emergency_travel/src/ui/screens/register_screen.dart';
import 'package:emergency_travel/src/ui/screens/welcome_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(EmergancyTravelApp());

class EmergancyTravelApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes:_appRoutes,
    );
  }

  ///Returns map of the app routes
  Map<String, WidgetBuilder>  get _appRoutes =>
    {
      WelcomeScreen.id: (context) => WelcomeScreen(),
      LoginScreen.id: (context) => LoginScreen(),
      RegistrationScreen.id: (context) => RegistrationScreen(),
    };

}
