# Flutter Kurdish Localization 🌍

This package provides unofficial localization support for *Central Kurdish Branch Sorani **(Kurdish: سۆرانی ,Soranî‎)***.

----
### Getting Started

`import 'package:flutter_kurdish_localization/flutter_kurdish_localization.dart';`

Add these delegates to *localizationsDelegates* array


**KurdishMaterialLocalizations.delegate** For text and dates localization
**KurdishWidgetLocalizations.delegate**  For text and UI directionality
**KurdishCupertinoLocalizations.delegate** For Cupertino widgets localization

```dart
return MaterialApp(
	localizationsDelegates: [
		..
		KurdishMaterialLocalizations.delegate,
		KurdishWidgetLocalizations.delegate,
		KurdishCupertinoLocalizations.delegate,
		...
	],
	supportedLocales: [ Locale('ku') ]
	locale: Locale('ku')
 )
```

-----
### Translations are available now!
