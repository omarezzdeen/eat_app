import 'package:eat_app/providers/auth.dart';
import 'package:eat_app/providers/carts.dart';
import 'package:eat_app/providers/categories.dart';
import 'package:eat_app/providers/foods.dart';
import 'package:eat_app/providers/master_provider.dart';
import 'package:eat_app/providers/users.dart';
import 'package:eat_app/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Foods(),
        ),
        ChangeNotifierProvider(
          create: (_) => Categories(),
        ),
        ChangeNotifierProvider(
          create: (context) => Auth(),
        ),
        ChangeNotifierProvider(
          create: (_) => Users(),
        ),
        ChangeNotifierProvider(
          create: (context) => MasterProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => Carts(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xffbc2c3d),
        hoverColor: const Color(0xffbc2c3d),
        shadowColor: const Color(0xffbc2c3d),
        primarySwatch: Colors.red,
      ),
      /*
        NAME SIZE  WEIGHT  SPACING
        headline1    96.0  light   -1.5
        headline2    60.0  light   -0.5
        headline3    48.0  regular  0.0
        headline4    34.0  regular  0.25
        headline5    24.0  regular  0.0
        headline6    20.0  medium   0.15
        subtitle1    16.0  regular  0.15
        subtitle2    14.0  medium   0.1
        body1        16.0  regular  0.5   (bodyText1)
        body2        14.0  regular  0.25  (bodyText2)
        button       14.0  medium   1.25
        caption      12.0  regular  0.4
        overline     10.0  regular  1.5
      */
      initialRoute: AppRouts.firstRunPageInApp,
      routes: AppRouts.routes,
    );
  }
}
