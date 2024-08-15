import 'package:flutter/material.dart';

extension GetTheme on ThemeData {
  ThemeData getTheme() =>
      copyWith(appBarTheme: AppBarTheme(color: scaffoldBackgroundColor));
}
