// import 'package:firealarm/caches/sharedpref/shared_preference_helper.dart';
import 'package:firealarm/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import '../utils/routes/routes.dart';

import './home_screen/home_screen.dart';
// for testing only
import 'package:provider/provider.dart';

import './fire_detection/fire_detected_screen.dart'; // for testing only
import './mydevices/mydevices.dart';
import 'login_signup/login_screen.dart'; // for testing only

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  // final SharedPreferenceHelper _sharedPreferenceHelper = SharedPreferenceHelper();
  // final UserStore _userStore = UserStore(getIt<Repos>)

  @override
  Widget build(BuildContext context) {
    // SharedPreferenceHelper _sharedPreferenceHelper = SharedPreferenceHelper();
    return MaterialApp(
        title: "FIRE ALARM",
        theme: new ThemeData(
          primaryColor: Colors.blueGrey[900],
          // accentColor: Colors.brown[100],
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: Routes.routes,
        home: Consumer<AuthProvider>(
          builder: (_, authProviderRef, __) {
            return authProviderRef.status == Status.Authenticated
                ? LoginScreen()
                : LoginScreen();
          },
        ));
  }
}
