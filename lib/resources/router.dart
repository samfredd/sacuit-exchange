import 'package:flutter/material.dart';
import 'package:sacuit_exchange/pages/authentication/login_screen.dart';
import 'package:sacuit_exchange/pages/authentication/signup_screen.dart';
import 'package:sacuit_exchange/pages/onbarding/onboarding.dart';
import 'package:sacuit_exchange/pages/onbarding/splash_screen.dart';
import 'package:sacuit_exchange/pages/settings/settings.dart';
import 'package:sacuit_exchange/pages/transactions/transactions.dart';
import 'package:sacuit_exchange/pages/wallet/wallet.dart';
import 'package:sacuit_exchange/widgets/bottom_nav.dart';

class Routes {
  static const String loginScreen = '/login';
  static const String signupScreen = '/signup';
  static const String onboardingScreen = '/onboarding';
  static const String homePage = '/homepage';
  static const String splashScreen = '/splashScreen';
  static const String wallet = '/wallet';
  static const String transactionsPage = '/transactionsPage';
  static const String settingsPage = '/settings';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingPage());
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case signupScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case homePage:
        return MaterialPageRoute(builder: (_) => const BottomNav());
      case wallet:
        return MaterialPageRoute(builder: (_) => const WalletScreen());
      case transactionsPage:
        return MaterialPageRoute(builder: (_) => const Trade());
      case settingsPage:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Unknown Route'),
            ),
          ),
        );
    }
  }
}
