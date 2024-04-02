

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final themeProvider = StateProvider((ref) => false);

//List of colors to change the theme

final  colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);


//un objecto de AppTheme (custom)

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
  );


class ThemeNotifier extends StateNotifier<AppTheme> {

  //estado inicial
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void updateSelectedColor(int index) {
    state = state.copyWith(selectedColor: index);
  }

}