import 'package:flutter/material.dart';
import 'package:roles/src/screens/list_roles.dart';
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
        accentColor: ColorsPallet.secondary,
        primaryColorLight: ColorsPallet.primaryLight,
        primaryColorDark: ColorsPallet.primaryDark,
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
                color: ColorsPallet.textPrimary),
            subtitle1: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                color: ColorsPallet.textSecondary),
            bodyText1: TextStyle(
              fontSize: 14,
              color: ColorsPallet.textSecondary,
            ),
            subtitle2: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorsPallet.primary)),
        appBarTheme: const AppBarTheme(color: ColorsPallet.primary),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: ColorsPallet.secondary,
          foregroundColor: ColorsPallet.textSecondary,
        ),
      ),
      title: 'Roles',
      home: const ListRoles(),
    );
  }
}
