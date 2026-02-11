import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class _KurdishMaterialLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _KurdishMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      KurdishWidgetLocalizations(),
    );
  }

  @override
  bool shouldReload(_KurdishMaterialLocalizationsDelegate old) => false;
}

class KurdishWidgetLocalizations extends WidgetsLocalizations {
  static const LocalizationsDelegate<WidgetsLocalizations> delegate =
      _KurdishMaterialLocalizationsDelegate();

  @override
  TextDirection get textDirection => TextDirection.rtl;

  @override
  String get reorderItemDown => 'بۆ خوارەوە';

  @override
  String get reorderItemLeft => 'بۆ لای چەپ';

  @override
  String get reorderItemRight => 'بۆ لای راست';

  @override
  String get reorderItemToEnd => 'بۆ کۆتایی';

  @override
  String get reorderItemToStart => 'بۆ سەرەتای';

  @override
  String get reorderItemUp => 'بۆ سەرەوە';

  @override
  String get copyButtonLabel => 'کۆپی';

  @override
  String get cutButtonLabel => 'بڕین';

  @override
  String get lookUpButtonLabel => 'بە دوا دا گەڕان';

  @override
  String get pasteButtonLabel => 'پەیست';

  @override
  String get searchWebButtonLabel => 'گەڕان لە وێب';

  @override
  String get selectAllButtonLabel => 'هەموو هەڵبژێرە';

  @override
  String get shareButtonLabel => 'هاوبەشکردن';
}
