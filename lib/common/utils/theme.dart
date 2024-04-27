import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// final TextTheme textTheme = Typography.blackCupertino.copyWith(
//   displayLarge: Typography.blackCupertino.displayLarge!
//       .copyWith(fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
final TextTheme textTheme = TextTheme(
  displayLarge: GoogleFonts.openSans(
      fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  displayMedium: GoogleFonts.openSans(
      fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  displaySmall: GoogleFonts.openSans(fontSize: 48, fontWeight: FontWeight.w400),
  headlineMedium: GoogleFonts.openSans(
      fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headlineSmall:
      GoogleFonts.openSans(fontSize: 24, fontWeight: FontWeight.w400),
  titleLarge: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  titleMedium: GoogleFonts.openSans(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  titleSmall: GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyLarge: GoogleFonts.roboto(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyMedium: GoogleFonts.roboto(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  labelLarge: GoogleFonts.roboto(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  bodySmall: GoogleFonts.roboto(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  labelSmall: GoogleFonts.roboto(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: const Color(0x00b37dd3), // a darker version of the primary color
  primaryContainer: Colors.white,

  secondary: const Color(0xFFC2185B), // a darker version of the secondary color
  tertiary: Colors.grey.shade800,
  surface: Colors.white,
  background: Colors.grey.shade300,
  shadow: Colors.black.withOpacity(0.5),
  error: Colors.red,
  onPrimary: Colors.white, // color used on top of primary color (e.g., text)
  onSecondary: Colors.white, // color used on top of secondary color
  onSurface: Colors.black, // typically used for text on white background
  onBackground:
      Colors.black, // similar to onSurface, but may be used differently
  onError: Colors.white, // used on top of the error color
);

ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: const Color(0x00b37dd3), // primary color of your app
  primaryContainer: Colors.black,
  secondary:
      const Color(0xFFC2185B), // secondary color used for interactive elements
  tertiary:
      Colors.grey.shade300, // secondary color used for interactive elements
  secondaryContainer: const Color(
      0xFFE25085), // lighter version of the secondary color, for containers
  surface: const Color(0xFF121212), // typical surface color for dark themes
  background: Colors.grey.shade800, // background color matching the surface
  shadow: Colors.black.withOpacity(0.5),
  error: Colors.red,
  onPrimary: Colors.white, // color used on top of primary color (e.g., text)
  onSecondary: Colors.white, // color used on top of secondary color
  onSurface: Colors.white, // typically used for text and icons on dark surfaces
  onBackground:
      Colors.white, // similar to onSurface, but may be used differently
  onError: Colors.white, // used on top of the error color
);

Map<int, Color> color = {
  50: const Color(0xFFE0F2F1),
  100: const Color(0xFFB2DFDB),
  200: const Color(0xFF80CBC4),
  300: const Color(0xFF4DB6AC),
  400: const Color(0xFF26A69A),
  500: const Color(0xFF009688),
  600: const Color(0xFF00897B),
  700: const Color(0xFF00796B),
  800: const Color(0xFF00695C),
  900: const Color(0xFF004D40),
};

MaterialColor primarySwatchGreen = MaterialColor(0xFF097D4C, color);

ThemeData lightTheme = ThemeData(
  primarySwatch: primarySwatchGreen,
  textTheme: textTheme,
  scaffoldBackgroundColor: Colors.white,
  useMaterial3: true,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  colorScheme: lightColorScheme,
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Color(0xFF097D4C),
  ),
);

ThemeData darkTheme = ThemeData(
  primarySwatch: primarySwatchGreen,
  textTheme: textTheme,
  scaffoldBackgroundColor: const Color(0xFF121212),
  useMaterial3: true,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  colorScheme: darkColorScheme,
);
