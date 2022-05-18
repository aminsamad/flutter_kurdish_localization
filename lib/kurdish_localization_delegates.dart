import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'kurdish_cupertino_localization_delegate.dart';
import 'kurdish_material_localization_delegate.dart';
import 'kurdish_widget_localization_delegate.dart';

class KurdishLocalizations {
  static const kurdishLocalizationsDelegates = <LocalizationsDelegate<dynamic>>[
    KurdishMaterialLocalizations.delegate,
    KurdishWidgetLocalizations.delegate,
    KurdishCupertinoLocalizations.delegate,
  ];
  static const LocalizationsDelegate<MaterialLocalizations>
      kurdishMaterialLocalizations = KurdishMaterialLocalizations.delegate;

  static const LocalizationsDelegate<WidgetsLocalizations>
      kurdishWidgetLocalizations = KurdishWidgetLocalizations.delegate;

  static const LocalizationsDelegate<CupertinoLocalizations>
      kurdishCupertinoLocalizations = KurdishCupertinoLocalizations.delegate;
}
