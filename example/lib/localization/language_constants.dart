import 'package:flutter/material.dart';
import 'package:flutter_kurdish_localization_example/localization/demo_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String langCode = 'languageCode';

//code wlatakan
const String english = 'en';
const String kurdish = 'ku';
const String arabic = 'ar';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  await preferences.setString(langCode, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  String languageCode = preferences.getString(langCode) ?? "en";
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case english:
      return const Locale(english);
    case kurdish:
      return const Locale(kurdish);
    case arabic:
      return const Locale(arabic);
    default:
      return const Locale(english);
  }
}

String getTranslated(BuildContext context, String key) {
  return DemoLocalization.of(context).translate(key);
}
