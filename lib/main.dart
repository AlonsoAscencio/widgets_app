import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/presentation/providers/theme_provider.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
      )
    );
}

class MainApp extends ConsumerWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
  
  /* final int selectedColor = ref.watch(selectedColorProvider);
  final bool isDarkMode = ref.watch(themeProvider); */

  final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
      /* theme: AppTheme (selectedColor:selectedColor, isDarkMode: isDarkMode ).getTheme(), */
    );
  }
}
