import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_kurdish_localization/flutter_kurdish_localization.dart';
import 'package:flutter_kurdish_localization_example/util/constants.dart';
import 'package:flutter_kurdish_localization_example/localization/demo_localization.dart';
import 'package:flutter_kurdish_localization_example/router/custom_router.dart';
import 'package:flutter_kurdish_localization_example/router/route_constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'localization/language_constants.dart';

bool? landingScreen;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  landingScreen = (_prefs.getBool('landing') ?? false);

  if (landingScreen == true) {
    debugPrint("Landing : $landingScreen");
  } else {
    debugPrint("Landing : $landingScreen");
  }

  runApp(const MyApp());
}

const List<Locale> supportedLocales = [
  Locale('en'),
  Locale('ku'),
  Locale('ar'),
];

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocale(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent, // NavigationBar Color
        statusBarColor: primaryColor, // StatusBar Color
        statusBarIconBrightness: Brightness.light));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Multi Localization Demo",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      locale: _locale,
      supportedLocales: supportedLocales,
      localizationsDelegates: const [
        DemoLocalization.delegate,
        KurdishMaterialLocalizations.delegate,
        KurdishWidgetLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale!.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      onGenerateRoute: CustomRouter.generatedRoute,
      initialRoute: landingScreen! ? homeRoute : landingRoute,
    );
  }
}
