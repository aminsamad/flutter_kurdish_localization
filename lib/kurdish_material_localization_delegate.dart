import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

class _KurdishMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _KurdishMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    const String localeName = 'ku';

    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: kuLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(kuDateSymbols),
    );
    return SynchronousFuture<MaterialLocalizations>(
      KurdishMaterialLocalizations(
        fullYearFormat: intl.DateFormat('y', localeName),
        shortDateFormat: intl.DateFormat('MM/DD/YY', localeName),
        compactDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        shortMonthDayFormat: intl.DateFormat('MM/DD', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        longDateFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        // The `intl` library's NumberFormat class is generated from CLDR data
        // (see https://github.com/dart-lang/intl/blob/master/lib/number_symbols_data.dart).
        // Unfortunately, there is no way to use a locale that isn't defined in
        // this map and the only way to work around this is to use a listed
        // locale's NumberFormat symbols. So, here we use the number formats
        // for 'ar' instead.
        decimalFormat: intl.NumberFormat('#,##0.###', 'ar'),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'ar'),
      ),
    );
  }

  @override
  bool shouldReload(_KurdishMaterialLocalizationsDelegate old) => false;
}

class KurdishMaterialLocalizations extends GlobalMaterialLocalizations {
  const KurdishMaterialLocalizations({
    String localeName = 'ku',
    required intl.DateFormat fullYearFormat,
    required intl.DateFormat shortDateFormat,
    required intl.DateFormat compactDateFormat,
    required intl.DateFormat shortMonthDayFormat,
    required intl.DateFormat mediumDateFormat,
    required intl.DateFormat longDateFormat,
    required intl.DateFormat yearMonthFormat,
    required intl.NumberFormat decimalFormat,
    required intl.NumberFormat twoDigitZeroPaddedFormat,
  }) : super(
            localeName: localeName,
            shortDateFormat: shortDateFormat,
            compactDateFormat: compactDateFormat,
            shortMonthDayFormat: shortMonthDayFormat,
            fullYearFormat: fullYearFormat,
            mediumDateFormat: mediumDateFormat,
            longDateFormat: longDateFormat,
            yearMonthFormat: yearMonthFormat,
            decimalFormat: decimalFormat,
            twoDigitZeroPaddedFormat: twoDigitZeroPaddedFormat);
  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _KurdishMaterialLocalizationsDelegate();

  @override
  String get aboutListTileTitleRaw => 'دەربارەی \$applicationName';

  @override
  String get alertDialogLabel => 'ئاگادارکردنەوە';

  @override
  String get anteMeridiemAbbreviation => 'پ.ن';

  @override
  String get backButtonTooltip => 'دواوە';

  @override
  String get calendarModeButtonLabel => 'گۆڕین بۆ ڕۆژژمێر';

  @override
  String get cancelButtonLabel => 'هەڵوەشاندنەوه';

  @override
  String get closeButtonLabel => 'داخستن';

  @override
  String get closeButtonTooltip => 'داخستن';

  @override
  String get collapsedIconTapHint => 'فراوانکردن';

  @override
  String get continueButtonLabel => 'بەردەوام بە';

  @override
  String get copyButtonLabel => 'کۆپی';

  @override
  String get cutButtonLabel => 'بڕین';

  @override
  String get dateHelpText => 'mm/dd/yyyy';

  @override
  String get dateInputLabel => 'بەروار بنووسە';

  @override
  String get dateOutOfRangeLabel => 'دەرەوەی مەودایە';

  @override
  String get datePickerHelpText => 'بەروار دیاری بکە';

  @override
  String get dateRangeEndDateSemanticLabelRaw => 'بەرواری کۆتایی \$fullDate';

  @override
  String get dateRangeEndLabel => 'بەرواری کۆتایی';

  @override
  String get dateRangePickerHelpText => 'دەست نیشانکردنی مەودا';

  @override
  String get dateRangeStartDateSemanticLabelRaw =>
      'بەرواری دەستپێکردن \$fullDate';

  @override
  String get dateRangeStartLabel => 'بەرواری دەستپێکردن';

  @override
  String get dateSeparator => '/';

  @override
  String get deleteButtonTooltip => 'سڕینەوە';

  @override
  String get dialModeButtonLabel => 'گۆڕین بۆ دۆخی هەڵبژێری داواکردن';

  @override
  String get dialogLabel => 'دیالۆگ';

  @override
  String get drawerLabel => 'لیستی ڕێنیشاندەر';

  @override
  String get expandedIconTapHint => 'نوشتانەوە';

  @override
  String get hideAccountsLabel => 'شاردنەوەی ئەژمێرەکان';

  @override
  String get inputDateModeButtonLabel => 'گۆڕین بۆ نووسین';

  @override
  String get inputTimeModeButtonLabel => 'گۆڕین بۆ دۆخی تێکردنی دەق';

  @override
  String get invalidDateFormatLabel => 'فۆرماتی نادروست.';

  @override
  String get invalidDateRangeLabel => 'مەودایەکی نادروست.';

  @override
  String get invalidTimeLabel => 'کاتێکی دروست بنووسە';

  @override
  String get licensesPackageDetailTextOne => '١ مۆڵەت';

  @override
  String get licensesPackageDetailTextOther => '\$licenseCount مۆڵەت';

  @override
  String get licensesPackageDetailTextZero => 'مۆڵەت نیە';

  @override
  String get licensesPageTitle => 'مۆڵەتەکان';

  @override
  String get modalBarrierDismissLabel => 'دەرکردن';

  @override
  String get moreButtonTooltip => 'زیاتر';

  @override
  String get nextMonthTooltip => 'مانگی داهاتوو';

  @override
  String get nextPageTooltip => 'لاپەڕەی داهاتوو';

  @override
  String get okButtonLabel => 'باشه';

  @override
  String get openAppDrawerTooltip => 'کردنەوەی لیستی ڕێنیشاندەر';

  @override
  String get pageRowsInfoTitleRaw => '\$firstRow–\$lastRow لە \$rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      '\$firstRow–\$lastRow تا \$rowCount';

  @override
  String get pasteButtonLabel => 'پەیست';

  @override
  String get popupMenuLabel => 'لیستی دەرکەوتە';

  @override
  String get postMeridiemAbbreviation => 'د.ن';

  @override
  String get previousMonthTooltip => 'مانگی پێشوو';

  @override
  String get previousPageTooltip => 'لاپەڕەی پێشوو';

  @override
  String get refreshIndicatorSemanticLabel => 'نوێکردنەوە';

  @override
  String? get remainingTextFieldCharacterCountFew => null;

  @override
  List<String> get narrowWeekdays => ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'];

  @override
  String? get remainingTextFieldCharacterCountMany => null;

  @override
  String get remainingTextFieldCharacterCountOne => '١ پیت ماوە';

  @override
  String get remainingTextFieldCharacterCountOther =>
      '\$remainingCount پیتەکان ماون';

  @override
  String? get remainingTextFieldCharacterCountTwo => null;

  @override
  String get remainingTextFieldCharacterCountZero => 'هیچ پیتێک نەماوەتەوە';

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
  String get rowsPerPageTitle => 'ڕیزەکان بۆ هەر پەڕەیەک:';

  @override
  String get saveButtonLabel => 'هەڵگرتن';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.tall;

  @override
  String get searchFieldLabel => 'گەڕان';

  @override
  String get selectAllButtonLabel => 'هەموو هەڵبژێرە';

  @override
  String get selectYearSemanticsLabel => 'ساڵ هەڵبژێرە';

  @override
  String? get selectedRowCountTitleFew => null;

  @override
  String? get selectedRowCountTitleMany => null;

  @override
  String get selectedRowCountTitleOne => '١ دانە هەڵبژێردرا';

  @override
  String get selectedRowCountTitleOther => '\$selectedRowCount هەڵبژێردراو';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String get selectedRowCountTitleZero => 'هیچ هەڵنەبژێراوە';

  @override
  String get showAccountsLabel => 'پیشاندانی ئەژمێرەکان';

  @override
  String get showMenuTooltip => 'پیشاندانی پێڕست';

  @override
  String get signedInLabel => 'چوونە ژوورەوە';

  @override
  String get tabLabelRaw => 'خشتەبەندی \$tabIndex لە \$tabCount';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.h_colon_mm_space_a;

  @override
  String get timePickerDialHelpText => 'کات هەڵبژێرە';

  @override
  String get timePickerHourLabel => 'کاتژمێر';

  @override
  String get timePickerHourModeAnnouncement => 'کاتژمێر هەڵبژێرە';

  @override
  String get timePickerInputHelpText => 'کات بنووسە';

  @override
  String get timePickerMinuteLabel => 'خولەک';

  @override
  String get timePickerMinuteModeAnnouncement => 'خولەک هەڵبژێرە';

  @override
  String get unspecifiedDate => 'بەروار';

  @override
  String get unspecifiedDateRange => 'مەودای بەروار';

  @override
  String get viewLicensesButtonLabel => 'پیشاندانی مۆڵەتەکان';

  @override
  String get firstPageTooltip => 'لاپه‌ڕه‌ی سه‌ره‌تا';

  @override
  String get lastPageTooltip => 'دوایین لاپه‌ڕه‌';

  @override
  String get keyboardKeyAlt => throw UnimplementedError();

  @override
  String get keyboardKeyAltGraph => throw UnimplementedError();

  @override
  String get keyboardKeyBackspace => throw UnimplementedError();

  @override
  String get keyboardKeyCapsLock => throw UnimplementedError();

  @override
  String get keyboardKeyChannelDown => throw UnimplementedError();

  @override
  String get keyboardKeyChannelUp => throw UnimplementedError();

  @override
  String get keyboardKeyControl => throw UnimplementedError();

  @override
  String get keyboardKeyDelete => throw UnimplementedError();

  String get keyboardKeyEisu => throw UnimplementedError();

  @override
  String get keyboardKeyEject => throw UnimplementedError();

  @override
  String get keyboardKeyEnd => throw UnimplementedError();

  @override
  String get keyboardKeyEscape => throw UnimplementedError();

  @override
  String get keyboardKeyFn => throw UnimplementedError();

  String get keyboardKeyHangulMode => throw UnimplementedError();

  String get keyboardKeyHanjaMode => throw UnimplementedError();

  String get keyboardKeyHankaku => throw UnimplementedError();

  String get keyboardKeyHiragana => throw UnimplementedError();

  String get keyboardKeyHiraganaKatakana => throw UnimplementedError();

  @override
  String get keyboardKeyHome => throw UnimplementedError();

  @override
  String get keyboardKeyInsert => throw UnimplementedError();

  String get keyboardKeyKanaMode => throw UnimplementedError();

  String get keyboardKeyKanjiMode => throw UnimplementedError();

  String get keyboardKeyKatakana => throw UnimplementedError();

  @override
  String get keyboardKeyMeta => throw UnimplementedError();

  @override
  String get keyboardKeyMetaMacOs => throw UnimplementedError();

  @override
  String get keyboardKeyMetaWindows => throw UnimplementedError();

  @override
  String get keyboardKeyNumLock => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad0 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad1 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad2 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad3 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad4 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad5 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad6 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad7 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad8 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad9 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadAdd => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadComma => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadDecimal => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadDivide => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadEnter => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadEqual => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadMultiply => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadParenLeft => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadParenRight => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadSubtract => throw UnimplementedError();

  @override
  String get keyboardKeyPageDown => throw UnimplementedError();

  @override
  String get keyboardKeyPageUp => throw UnimplementedError();

  @override
  String get keyboardKeyPower => throw UnimplementedError();

  @override
  String get keyboardKeyPowerOff => throw UnimplementedError();

  @override
  String get keyboardKeyPrintScreen => throw UnimplementedError();

  String get keyboardKeyRomaji => throw UnimplementedError();

  @override
  String get keyboardKeyScrollLock => throw UnimplementedError();

  @override
  String get keyboardKeySelect => throw UnimplementedError();

  @override
  String get keyboardKeySpace => throw UnimplementedError();

  String get keyboardKeyZenkaku => throw UnimplementedError();

  String get keyboardKeyZenkakuHankaku => throw UnimplementedError();

  @override
  String get menuBarMenuLabel => throw UnimplementedError();

  @override
  // TODO: implement bottomSheetLabel
  String get bottomSheetLabel => throw UnimplementedError();

  @override
  // TODO: implement currentDateLabel
  String get currentDateLabel => throw UnimplementedError();

  @override
  // TODO: implement keyboardKeyShift
  String get keyboardKeyShift => throw UnimplementedError();

  @override
  // TODO: implement scrimLabel
  String get scrimLabel => throw UnimplementedError();

  @override
  // TODO: implement scrimOnTapHintRaw
  String get scrimOnTapHintRaw => throw UnimplementedError();
}

const kuDateSymbols = {
  'NAME': 'ku',
  'ERAS': ['پ.ز', 'ز'],
  'ERANAMES': ['پێش زاینی', 'زاینی'],
  'NARROWMONTHS': [
    'ک.د',
    'ش',
    'ز',
    'ن',
    'م',
    'ح',
    'ت',
    'ئ',
    'ل',
    'ت.ی',
    'ت.د',
    'ک.ی'
  ],
  'STANDALONENARROWMONTHS': [
    'ک.د',
    'ش',
    'ز',
    'ن',
    'م',
    'ح',
    'ت',
    'ئ',
    'ل',
    'ت.ی',
    'ت.د',
    'ک.ی'
  ],
  'MONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'STANDALONEMONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'SHORTMONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'STANDALONESHORTMONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'WEEKDAYS': [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە'
  ],
  'STANDALONEWEEKDAYS': [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە'
  ],
  'SHORTWEEKDAYS': [
    'یەکشەم',
    'دووشەم',
    'سێشەم',
    'چوارشەم',
    'پێنجشەم',
    'هەینی',
    'شەممە'
  ],
  'STANDALONESHORTWEEKDAYS': [
    'یەکشەم',
    'دووشەم',
    'سێشەم',
    'چوارشەم',
    'پێنجشەم',
    'هەینی',
    'شەممە'
  ],
  'NARROWWEEKDAYS': ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  'STANDALONENARROWWEEKDAYS': ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  'SHORTQUARTERS': ['چ١', 'چ٢', 'چ٣', 'چ٤'],
  'QUARTERS': ['چارەکی یەکەم', 'چارەکی دووەم', 'چارەکی سێیەم', 'چارەکی چوارەم'],
  'AMPMS': ['پ.ن', 'د.ن'],
  'DATEFORMATS': [
    'EEEE، d MMMM y',
    'd MMMM y',
    'dd‏/MM‏/y',
    'd‏/M‏/y',
  ],
  'TIMEFORMATS': [
    'h:mm:ss a zzzz',
    'h:mm:ss a z',
    'h:mm:ss a',
    'h:mm a',
  ],
  'AVAILABLEFORMATS': null,
  'DATETIMEFORMATS': [
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
  ],
  'ZERODIGIT': '٠',
  'FIRSTDAYOFWEEK': 5,
  'WEEKENDRANGE': [4, 5],
  'FIRSTWEEKCUTOFFDAY': 3
};
const kuLocaleDatePatterns = {
  'd': 'd', // DAY
  'E': 'ccc', // ABBR_WEEKDAY
  'EEEE': 'cccc', // WEEKDAY
  'LLL': 'LLL', // ABBR_STANDALONE_MONTH
  'LLLL': 'LLLL', // STANDALONE_MONTH
  'M': 'L', // NUM_MONTH
  'Md': 'd/‏M', // NUM_MONTH_DAY
  'MEd': 'EEE، d/M', // NUM_MONTH_WEEKDAY_DAY
  'MMM': 'LLL', // ABBR_MONTH
  'MMMd': 'd MMM', // ABBR_MONTH_DAY
  'MMMEd': 'EEE، d MMM', // ABBR_MONTH_WEEKDAY_DAY
  'MMMM': 'LLLL', // MONTH
  'MMMMd': 'd MMMM', // MONTH_DAY
  'MMMMEEEEd': 'EEEE، d MMMM', // MONTH_WEEKDAY_DAY
  'QQQ': 'QQQ', // ABBR_QUARTER
  'QQQQ': 'QQQQ', // QUARTER
  'y': 'y', // YEAR
  'yM': 'M‏/y', // YEAR_NUM_MONTH
  'yMd': 'd‏/M‏/y', // YEAR_NUM_MONTH_DAY
  'yMEd': 'EEE، d/‏M/‏y', // YEAR_NUM_MONTH_WEEKDAY_DAY
  'yMMM': 'MMM y', // YEAR_ABBR_MONTH
  'yMMMd': 'd MMM y', // YEAR_ABBR_MONTH_DAY
  'yMMMEd': 'EEE، d MMM y', // YEAR_ABBR_MONTH_WEEKDAY_DAY
  'yMMMM': 'MMMM y', // YEAR_MONTH
  'yMMMMd': 'd MMMM y', // YEAR_MONTH_DAY
  'yMMMMEEEEd': 'EEEE، d MMMM y', // YEAR_MONTH_WEEKDAY_DAY
  'yQQQ': 'QQQ y', // YEAR_ABBR_QUARTER
  'yQQQQ': 'QQQQ y', // YEAR_QUARTER
  'H': 'HH', // HOUR24
  'Hm': 'HH:mm', // HOUR24_MINUTE
  'Hms': 'HH:mm:ss', // HOUR24_MINUTE_SECOND
  'j': 'h a', // HOUR
  'jm': 'h:mm a', // HOUR_MINUTE
  'jms': 'h:mm:ss a', // HOUR_MINUTE_SECOND
  'jmv': 'h:mm a v', // HOUR_MINUTE_GENERIC_TZ
  'jmz': 'h:mm a z', // HOUR_MINUTETZ
  'jz': 'h a z', // HOURGENERIC_TZ
  'm': 'm', // MINUTE
  'ms': 'mm:ss', // MINUTE_SECOND
  's': 's', // SECOND
  'v': 'v', // ABBR_GENERIC_TZ
  'z': 'z', // ABBR_SPECIFIC_TZ
  'zzzz': 'zzzz', // SPECIFIC_TZ
  'ZZZZ': 'ZZZZ' // ABBR_UTC_TZ
};
