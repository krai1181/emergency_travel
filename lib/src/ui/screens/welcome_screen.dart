import 'package:emergency_travel/resources/strings.dart';
import 'package:emergency_travel/src/ui/screens/login_screen.dart';
import 'package:emergency_travel/src/ui/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) => _welcomeScreenEntryPoint();

  ///Returns start point of the [WelcomeScreen]
  _welcomeScreenEntryPoint() => Scaffold(
        backgroundColor: Colors.white,
        body: _mainContent(),
      );

  _mainContent() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _screenTitleWithLogo(),
            const SizedBox(height: 48.0,),
            _nextScreenButton(Strings.logIn, LoginScreen.id),
            _nextScreenButton(Strings.signUp, RegistrationScreen.id),
          ],
        ),
      );


  ///Rounded button
  _nextScreenButton(String buttonName, String routeName) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          elevation: 5.0,
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            onPressed: () => _nextScreen(routeName),
            minWidth: 200.0,
            height: 42.0,
            child: Text(
              buttonName,
            ),
          ),
        ),
      );


  ///Go to the next screen by screen name
  void _nextScreen(String routeName) => Navigator.pushNamed(context, routeName);


  ///Returns screen title
  _screenTitleWithLogo() => Row(
        children: <Widget>[
          SizedBox(
            child: SvgPicture.asset('lib/resources/images/suitcase.svg'),
            height: 200.0,
          ),
          const Text(
            Strings.appName,
            style: TextStyle(
              fontSize: 45.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      );
}
