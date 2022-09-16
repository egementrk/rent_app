//Imports
import 'package:altogic_orange/components/constants.dart';
import 'package:altogic_orange/core/provider/email_provider.dart';
import 'package:altogic_orange/core/provider/user_info_provider.dart';
import 'package:altogic_orange/screens/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme/app_theme.dart';
import 'package:altogic_orange/core/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => EmailProvider()),
        Provider(create: (_) => UserInfoProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.mainTheme,
        localizationsDelegates: localizationDelegates,
        supportedLocales: const [
          Locale('en', ''), // English, no country code
          Locale('tr', ''), // Turkish, no country code
        ],
        home: LoginPage(),
      ),
    );
  }
}
