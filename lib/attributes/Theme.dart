import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
    primaryColor: Color(0xFF2FB26C),
    primaryColorDark: Color(0xFF5E8B03),
    primaryColorLight: Color(0xFFB388FF),
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Color(0xFFF5F5F5),
    colorScheme: ColorScheme.light(secondary: Color(0xFF5E8B03),background: Colors.white),

    fontFamily: 'Futura',

    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
      headline2: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      headline3: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      headline4: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      headline5: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      headline6: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      bodyText1: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
      bodyText2: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.normal,
        fontSize: 10,
      ),
    ),
  );
}
//M's code
// import 'package:flutter/material.dart';
//
// ThemeData theme() {
//   return ThemeData(
//     colorScheme: ColorScheme.light().copyWith(
//       primary: Color(0xFF2FB26C),
//       secondary: Color(0xFF5E8B03),
//       background: Color(0xFFF5F5F5),
//       onBackground: Colors.white,
//       tertiary: Color(0xFFB388FF),
//     ),
//     textTheme: const TextTheme(
//       headline1: TextStyle(
//           color: Color(0xFF1B070B),
//           fontWeight: FontWeight.bold,
//           fontSize: 36,
//           fontFamily: 'futura'),
//       headline2: TextStyle(
//         color: Color(0xFF1B070B),
//         fontWeight: FontWeight.bold,
//         fontSize: 24,
//       ),
//       headline3: TextStyle(
//           color: Color(0xFF1B070B),
//           fontWeight: FontWeight.bold,
//           fontSize: 18,
//           fontFamily: 'futura'
//       ),
//       headline4: TextStyle(
//           color: Color(0xFF1B070B),
//           fontWeight: FontWeight.bold,
//           fontSize: 16,
//           fontFamily: 'futura'
//       ),
//       headline5: TextStyle(
//           color: Color(0xFF1B070B),
//           fontWeight: FontWeight.bold,
//           fontSize: 14,
//           fontFamily: 'futura'
//       ),
//       headline6: TextStyle(
//           color: Color(0xFF1B070B),
//           fontWeight: FontWeight.normal,
//           fontSize: 14,
//           fontFamily: 'futura'
//       ),
//       bodyText1: TextStyle(
//           color: Color(0xFF1B070B),
//           fontWeight: FontWeight.normal,
//           fontSize: 12,
//           fontFamily: 'futura'
//       ),
//       bodyText2: TextStyle(
//           color: Color(0xFF1B070B),
//           fontWeight: FontWeight.normal,
//           fontSize: 10,
//           fontFamily: 'futura'
//       ),
//     ),
//   );
// }




//Og code
// import 'package:flutter/material.dart';
//
// ThemeData theme(){
//   return ThemeData(
//     primaryColor: Color(0xFF2FB26C),
//     primaryColorDark: Color(0xFF5E8B03),
//     primaryColorLight: Color(0xFFB388FF),
//     scaffoldBackgroundColor: Colors.white,
//     backgroundColor: Color(0xFFF5F5F5),
//     colorScheme: ColorScheme.light(secondary: Color(0xFF5E8B03),background: Colors.white),
//
//
//     fontFamily: 'Futura',
//
//     textTheme: const TextTheme(
//           headline1: TextStyle(
//           color: Color(0xFF1B070B),
//           fontWeight: FontWeight.bold,
//           fontSize: 36,
//         ),
//       headline2: TextStyle(
//         color: Color(0xFF1B070B),
//         fontWeight: FontWeight.bold,
//         fontSize: 24,
//       ),
//       headline3: TextStyle(
//         color: Color(0xFF1B070B),
//         fontWeight: FontWeight.bold,
//         fontSize: 18,
//       ),
//       headline4: TextStyle(
//         color: Color(0xFF1B070B),
//         fontWeight: FontWeight.bold,
//         fontSize: 16,
//       ),
//       headline5: TextStyle(
//         color: Color(0xFF1B070B),
//         fontWeight: FontWeight.bold,
//         fontSize: 14,
//       ),
//       headline6: TextStyle(
//         color: Color(0xFF1B070B),
//         fontWeight: FontWeight.normal,
//         fontSize: 14,
//       ),
//       bodyText1: TextStyle(
//         color: Color(0xFF1B070B),
//         fontWeight: FontWeight.normal,
//         fontSize: 12,
//       ),
//       bodyText2: TextStyle(
//         color: Color(0xFF1B070B),
//         fontWeight: FontWeight.normal,
//         fontSize: 10,
//       ),
//     ),
//   );
// }