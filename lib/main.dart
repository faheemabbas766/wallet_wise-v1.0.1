import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wallet_wise/presentation/onboardingthree_screen/provider/onboardingthree_provider.dart';
import 'package:wallet_wise/presentation/splashscreen_screen/provider/splashscreen_provider.dart';
import 'core/app_export.dart';
import 'presentation/onboardingone_screen/provider/onboardingone_provider.dart';
import 'presentation/onboardingtwo_screen/provider/onboardingtwo_provider.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]).then((value) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => OnboardingoneProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => OnboardingtwoProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => SplashscreenProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => OnboardingthreeProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => ThemeProvider(),
            ),
          ],
          child: Consumer<ThemeProvider>(
            builder: (context, provider, child) {
              return MaterialApp(
                theme: theme,
                title: 'wallet_wise',
                navigatorKey: NavigatorService.navigatorKey,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: [
                  AppLocalizationDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: [
                  Locale(
                    'en',
                    '',
                  ),
                ],
                initialRoute: AppRoutes.initialRoute,
                routes: AppRoutes.routes,
              );
            },
          ),
        );
      },
    );
  }
}
