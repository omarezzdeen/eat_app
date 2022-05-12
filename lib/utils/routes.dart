import 'package:eat_app/widgets/components/bottom_navigation_bar.dart';

import '../screens/edit_profile_screen.dart';
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
    Routs.userProfileScreen: (ctx) => const UserProfileScreen(),
    Routs.editProfileScreen: (ctx) => const EditProfileScreen(),
  };
}

class Routs {
  static const welcomeScreen = '/splashScreen';
  static const homeScreen = '/homeScreen';
  static const loginScreen = '/loginScreen';
  static const signupScreen = '/signupScreen';
  static const bottomNavigationScreen = '/bottomNavigationScreen';
  static const detailsScreen = '/detailsScreen';
  static const userProfileScreen = '/userProfileScreen';
  static const editProfileScreen = '/editProfileScreen';
}