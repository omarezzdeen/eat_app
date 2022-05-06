import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  visualDensity: const VisualDensity(vertical: 0.5, horizontal: 0.5),
  primarySwatch: const MaterialColor(
    0xffbc2c3d,
    <int, Color>{
      50: Color(0x00000000),
      100: Color(0xa1F5E0C3),
      200: Color(0xaaF5E0C3),
      300: Color(0xafF5E0C3),
      400: Color(0xffF5E0C3),
      500: Color(0xffEDD5B3),
      600: Color(0xffDEC29B),
      700: Color(0xffC9A87C),
      800: Color(0xffB28E5E),
      900: Color(0xff936F3E)
    },
  ),
  primaryColor: const Color(0xffbc2c3d),
  // primaryColorBrightness: Brightness.light,
  // primaryColorLight: const Color(0xa1bc2c3d),
  // primaryColorDark: const Color(0xff94202d),
  // canvasColor: const Color(0xffbc2c3d),
  // accentColor: const Color(0xffbc2c3d),
  // accentColorBrightness: Brightness.light,
  // scaffoldBackgroundColor: const Color(0xffffffff),
  // bottomAppBarColor: const Color(0xffbc2c3d),
  // cardColor: const Color(0xaaF5E0C3),
  dividerColor: const Color(0x00000000),
  focusColor: const Color(0x00000000),
  // hoverColor: const Color(0xffbc2c3d),
  highlightColor: const Color(0xff936F3E),
  splashColor: const Color(0xff457BE0),
//  splashFactory: # override create method from  InteractiveInkFeatureFactory
//   selectedRowColor: Colors.grey,
//   unselectedWidgetColor: Colors.grey.shade400,
//   disabledColor: Colors.grey.shade200,
  buttonTheme: const ButtonThemeData(
      //button themes
      ),
  toggleButtonsTheme: const ToggleButtonsThemeData(
      //toggle button theme
      ),
  buttonColor: const Color(0xff936F3E),
  // secondaryHeaderColor: Colors.grey,
  // textSelectionColor: const Color(0xffB5BFD3),
  cursorColor: const Color(0xffbc2c3d),
  textSelectionHandleColor: const Color(0xff936F3E),
  // backgroundColor: const Color(0xffffffff),
  // dialogBackgroundColor: Colors.white,
  indicatorColor: const Color(0xff457BE0),
  hintColor: Colors.grey,
  errorColor: Colors.red,
  toggleableActiveColor: const Color(0xff6D42CE),
  textTheme: const TextTheme(
      //text themes that contrast with card and canvas
      ),
  primaryTextTheme: const TextTheme(
      //text theme that contrast with primary color
      ),
  accentTextTheme: const TextTheme(
      //text theme that contrast with accent Color
      ),
  inputDecorationTheme: const InputDecorationTheme(
      // default values for InputDecorator, TextField, and TextFormField
      ),
  iconTheme: const IconThemeData(
      //icon themes that contrast with card and canvas
      ),
  primaryIconTheme: const IconThemeData(
      //icon themes that contrast primary color
      ),
  accentIconTheme: const IconThemeData(
      //icon themes that contrast accent color
      ),
);














// ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   visualDensity: const VisualDensity(vertical: 0.5, horizontal: 0.5),
//   primarySwatch: const MaterialColor(
//     0xFFF5E0C3,
//     <int, Color>{
//       50: Color(0x1a5D4524),
//       100: Color(0xa15D4524),
//       200: Color(0xaa5D4524),
//       300: Color(0xaf5D4524),
//       400: Color(0x1a483112),
//       500: Color(0xa1483112),
//       600: Color(0xaa483112),
//       700: Color(0xff483112),
//       800: Color(0xaf2F1E06),
//       900: Color(0xff2F1E06)
//     },
//   ),
//   primaryColor: const Color(0xff5D4524),
//   primaryColorBrightness: Brightness.dark,
//   primaryColorLight: const Color(0x1a311F06),
//   primaryColorDark: Color(0xff936F3E),
//   canvasColor: const Color(0xffE09E45),
//   accentColor: const Color(0xff457BE0),
//   scaffoldBackgroundColor: const Color(0xffB5BFD3),
//   bottomAppBarColor: const Color(0xff6D42CE),
//   cardColor: const Color(0xaa311F06),
//   dividerColor: const Color(0x1f6D42CE),
//   focusColor: const Color(0x1a311F06),
//   hoverColor: const Color(0xa15D4524),
//   highlightColor: const Color(0xaf2F1E06),
//   splashColor: const Color(0xff457BE0),
// //  splashFactory: # override create method from  InteractiveInkFeatureFactory
//   selectedRowColor: Colors.grey,
//   unselectedWidgetColor: Colors.grey.shade400,
//   disabledColor: Colors.grey.shade200,
//   buttonTheme: const ButtonThemeData(
// //button themes
//       ),
//   toggleButtonsTheme: const ToggleButtonsThemeData(
// //toggle button theme
//       ),
//   buttonColor: const Color(0xff483112),
//   secondaryHeaderColor: Colors.grey,
//   textSelectionColor: const Color(0x1a483112),
//   cursorColor: const Color(0xff483112),
//   textSelectionHandleColor: const Color(0xff483112),
//   backgroundColor: const Color(0xff457BE0),
//   dialogBackgroundColor: Colors.white,
//   indicatorColor: const Color(0xff457BE0),
//   hintColor: Colors.grey,
//   errorColor: Colors.red,
//   toggleableActiveColor: const Color(0xff6D42CE),
//   textTheme: const TextTheme(
// //text themes that contrast with card and canvas
//       ),
//   primaryTextTheme: const TextTheme(
// //text theme that contrast with primary color
//       ),
//   accentTextTheme: const TextTheme(
// //text theme that contrast with accent Color
//       ),
//   inputDecorationTheme: const InputDecorationTheme(
// // default values for InputDecorator, TextField, and TextFormField
//       ),
//   iconTheme: const IconThemeData(
// //icon themes that contrast with card and canvas
//       ),
//   primaryIconTheme: const IconThemeData(
// //icon themes that contrast primary color
//       ),
//
//   accentIconTheme: const IconThemeData(
// //icon themes that contrast accent color
//       ),
// );
