import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:sacuit_exchange/Theme/app_theme.dart';
import 'package:sacuit_exchange/firebase_options.dart';
import 'package:sacuit_exchange/pages/onbarding/onboarding.dart';
import 'package:sacuit_exchange/resources/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness currentBrightness =
        SchedulerBinding.instance.window.platformBrightness;

    // Set status bar text color based on the theme mode
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Make status bar transparent
      statusBarIconBrightness: currentBrightness == Brightness.light
          ? Brightness.dark
          : Brightness.light,
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system, // Follow system-wide theme
      theme: AppThemes.lightTheme, // Light theme
      darkTheme: AppThemes.darkTheme,
      initialRoute: Routes.splashScreen,
      onGenerateRoute: Routes.generateRoute,
      home: const OnboardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
