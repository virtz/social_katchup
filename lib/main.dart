import 'package:flutter/material.dart';
import 'package:social_katchup/utils/routes.dart';
import 'package:social_katchup/utils/routes.dart' as router;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'social_katchup',
      theme: ThemeData(
      
        primaryColor: Color(0xffE9446A),

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      // home: SignIn(),
      initialRoute: SignInViewRoute,
      onGenerateRoute:router.generateRoute,
    );
  }
}

