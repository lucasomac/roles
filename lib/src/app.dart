import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:roles/src/screens/list_roles.dart';

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
      restorationScopeId: 'app',
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('pt', 'br')
      ],
      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      // SettingsController to display the correct theme.
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      title: 'Rolês',
      home: ListRole(),
    );
  }
}
