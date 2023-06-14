import 'package:flutter/material.dart';
import 'package:roles/src/ui/screens/screen_list_roles.dart';
import 'package:roles/src/util/colors_pallet.dart';

/// The Widget that configures your application.
class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Providing a restorationScopeId allows the Navigator built by the
      // MaterialApp to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('pt', 'br')
      ],
      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      // SettingsController to display the correct theme.

      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: ColorsPallet.primary,
        primaryColorLight: ColorsPallet.primaryLight,
        primaryColorDark: ColorsPallet.primaryDark,
        textTheme: const TextTheme(
            displayLarge: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
                color: ColorsPallet.textPrimary),
            titleMedium: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                color: ColorsPallet.textSecondary),
            bodyLarge: TextStyle(
              fontSize: 14,
              color: ColorsPallet.textSecondary,
            ),
            titleSmall: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorsPallet.primary)),
        appBarTheme: const AppBarTheme(color: ColorsPallet.primary),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: ColorsPallet.secondary,
          foregroundColor: ColorsPallet.textSecondary,
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: ColorsPallet.secondary),
      ),
      title: 'Roles',
      home: const ScreenListRoles(),
    );
  }
}
