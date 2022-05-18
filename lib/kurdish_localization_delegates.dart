import 'package:flutter/material.dart';

import 'kurdish_cupertino_localization_delegate.dart';
import 'kurdish_material_localization_delegate.dart';
import 'kurdish_widget_localization_delegate.dart';

const List<LocalizationsDelegate<dynamic>> kurdishLocalizationsDelegates =
    <LocalizationsDelegate<dynamic>>[
  KurdishMaterialLocalizations.delegate,
  KurdishWidgetLocalizations.delegate,
  KurdishCupertinoLocalizations.delegate,
];
