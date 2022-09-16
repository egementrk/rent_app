//Library
library main_page;

//Imports
import 'package:altogic_orange/components/constants.dart';
import 'package:altogic_orange/core/models/user_model.dart';
import 'package:altogic_orange/core/services/main_service.dart';
import 'package:altogic_orange/core/theme/app_theme.dart';
import 'package:altogic_orange/core/theme/constants.dart';
import 'package:altogic_orange/screens/login/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../components/context_extension.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:http/http.dart' as http;

//Parts
part 'settings_page/settings_page.dart';
part '../widgets/colorful_background_section.dart';
part '../widgets/white_foreground_section.dart';
part '../main/widgets/custom_card.dart';
part '../main/widgets/info_text.dart';
part 'settings_page/widgets/setting_card.dart';
part 'settings_page/widgets/settings_section.dart';
part 'settings_page/widgets/switch_button.dart';
part '../main/widgets/main_content_section.dart';
part '../main/widgets/home_body.dart';
part 'widgets/custom_appbar.dart';
part 'widgets/custom_circle_avatar.dart';
part 'search_page/search_page.dart';
part 'search_page/search_page_body.dart';
part 'cleaner_detail/cleaner_detail_page.dart';
part 'cleaner_detail/cleaner_detail_content.dart';
part 'cleaner_detail/widgets/cleaner_detail_custom_text.dart';

void main() => runApp(MainPage());

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    HomeBody(),
    SearchPage(),
    SettingsPage(),
  ];

  void _onNavigationItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Page',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.mainTheme,
      localizationsDelegates: localizationDelegates,
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('tr', ''), // Turkish, no country code
      ],
      home: Scaffold(
          body: _widgetOptions.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: AppLocalizations.of(context)!.home,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: AppLocalizations.of(context)!.search,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Color.fromRGBO(51, 46, 107, 1),
            onTap: _onNavigationItemTap,
          )),
    );
  }
}
