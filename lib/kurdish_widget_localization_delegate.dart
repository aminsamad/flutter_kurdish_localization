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
  String get reorderItemDown => throw UnimplementedError();

  @override
  String get reorderItemLeft => throw UnimplementedError();

  @override
  String get reorderItemRight => throw UnimplementedError();

  @override
  String get reorderItemToEnd => throw UnimplementedError();

  @override
  String get reorderItemToStart => throw UnimplementedError();

  @override
  String get reorderItemUp => throw UnimplementedError();
  
  @override
  // TODO: implement copyButtonLabel
  String get copyButtonLabel => throw UnimplementedError();
  
  @override
  // TODO: implement cutButtonLabel
  String get cutButtonLabel => throw UnimplementedError();
  
  @override
  // TODO: implement lookUpButtonLabel
  String get lookUpButtonLabel => throw UnimplementedError();
  
  @override
  // TODO: implement pasteButtonLabel
  String get pasteButtonLabel => throw UnimplementedError();
  
  @override
  // TODO: implement searchWebButtonLabel
  String get searchWebButtonLabel => throw UnimplementedError();
  
  @override
  // TODO: implement selectAllButtonLabel
  String get selectAllButtonLabel => throw UnimplementedError();
  
  @override
  // TODO: implement shareButtonLabel
  String get shareButtonLabel => throw UnimplementedError();
}
