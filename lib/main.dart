import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/app_localization.dart';
import 'package:flutter_localization/bloc/language_bloc.dart';
import 'package:flutter_localization/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(BlocProvider<LanguageBloc>(
      create: (context) => LanguageBloc(LanguageState.initial()),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) {
        return MaterialApp(
          locale: state.locale,
          localizationsDelegates: [
            AppLocalization.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en', 'US'),
            Locale('fr', ''),
          ],
          home: HomePage(),
        );
      },
    );
  }
}
