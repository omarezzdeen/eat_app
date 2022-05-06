
import 'package:eat_app/screens/details_screen.dart';
import 'package:eat_app/widgets/components/bottom_navigation_bar.dart';

import '../screens/screens.dart';

class AppRouts {

  static const firstRunPageInApp = Routs.welcomeScreen;

  static final routes = {
    Routs.welcomeScreen: (ctx) => const SplashScreen(),
    Routs.homeScreen: (ctx) => const HomeScreen(),
    Routs.loginScreen: (ctx) => const LoginScreen(),
    Routs.signupScreen: (ctx) => SignUpScreen(),
    Routs.bottomNavigationScreen: (ctx) => const BottomNavigationBarMuster(),
    Routs.detailsScreen: (ctx) => const DetailsScreen(),
  };
}

class Routs {
  static const welcomeScreen = '/splashScreen';
  static const homeScreen = '/homeScreen';
  static const loginScreen = '/loginScreen';
  static const signupScreen = '/signupScreen';
  static const bottomNavigationScreen = '/bottomNavigationScreen';
  static const detailsScreen = '/detailsScreen';
}