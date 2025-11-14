import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class _KurdishWidgetLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _KurdishWidgetLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ckb';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      KurdishWidgetLocalizations(),
    );
  }

  @override
  bool shouldReload(_KurdishWidgetLocalizationsDelegate old) => false;
}

class KurdishWidgetLocalizations extends WidgetsLocalizations {
  static const LocalizationsDelegate<WidgetsLocalizations> delegate =
      _KurdishWidgetLocalizationsDelegate();

  @override
  TextDirection get textDirection => TextDirection.rtl;

  @override
  String get reorderItemDown => 'بڕۆ خوارەوە';

  @override
  String get reorderItemLeft => 'بڕۆ لای چەپ';

  @override
  String get reorderItemRight => 'بڕۆ لای راست';

  @override
  String get reorderItemToEnd => 'بڕۆ کۆتایی';

  @override
  String get reorderItemToStart => 'بڕۆ سەرەتا';

  @override
  String get reorderItemUp => 'بڕۆ سەرەوە';

  @override
  String get copyButtonLabel => 'کۆپی';

  @override
  String get cutButtonLabel => 'بڕین';

  @override
  String get pasteButtonLabel => 'پەیست';

  @override
  String get selectAllButtonLabel => 'هەمووی دیاریبکە';

  @override
  String get lookUpButtonLabel => 'گەڕان';

  @override
  String get searchWebButtonLabel => 'گەڕانی وێب';

  @override
  String get shareButtonLabel => 'هاوبەشکردن';

  @override
  String get modalBarrierDismissLabel => 'لادان';

  @override
  String get menuDismissLabel => 'داخستنی پێڕست';

  @override
  String get scanTextButtonLabel => 'سکانکردنی دەق';

  @override
  String get expansionTileCollapsedHint => 'دوو جار دابگرە بۆ فراوانکردن';

  @override
  String get expansionTileCollapsedTapHint => 'فراوان بکە بۆ زانیاری زیاتر';

  @override
  String get expansionTileExpandedHint => 'دوو جار دابگرە بۆ کۆکردنەوە';

  @override
  String get expansionTileExpandedTapHint => 'کۆیبکەرەوە';
}
