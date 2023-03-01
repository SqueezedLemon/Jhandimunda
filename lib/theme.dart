// import 'package:flutter/material.dart';
// import './constants.dart';

// //Main Theme of our App
// ThemeData lightThemeData(BuildContext context) {
//   return ThemeData.light().copyWith(
//     primaryColor: kPrimaryColor,
//     scaffoldBackgroundColor: Colors.white,
//     appBarTheme: appBarTheme,
//     iconTheme: IconThemeData(color: kContentColorLightTheme),
//     textTheme: ThemeData.light().textTheme.copyWith(
//           headline6: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Mulish'),
//         ),
//     // ColorScheme: ColorScheme.light(
//     //   primary: kPrimaryColor,
//     //   secondary: kSecondaryColor,
//     //   error: kErrorColor,
//     // ),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: Colors.white,
//       selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
//       unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
//       selectedIconTheme: IconThemeData(color: kPrimaryColor),
//       showUnselectedLabels: true,
//     ),
//   );
// }

// final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kPrimaryColor,
    fontFamily: "NovitaNova",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor, fontSize: 20),
    bodyText2: TextStyle(color: kTextColor),
    headline1: TextStyle(color: kTextColor, fontSize: 50),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: kPrimaryColor,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}
