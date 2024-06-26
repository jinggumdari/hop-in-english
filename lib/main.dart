import 'package:english_helper/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark,
  );

  runApp(
    const ProviderScope(
      child: HopInEnglish(),
    ),
  );
}

class HopInEnglish extends ConsumerWidget {
  const HopInEnglish({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(routerProvider),
      title: 'Matcher App',
      themeMode: ThemeMode.system,
      // theme: lightTheme,
      // darkTheme: darkTheme,
      // home: const MainNavigationScreen(),
    );
  }
}
