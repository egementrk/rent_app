part of main_page;

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings Page',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.mainTheme,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('tr', ''), // Turkish, no country code
      ],
      home: Scaffold(
        body: Stack(
          children: [
            BackgroundSection(
              height: context.height * 0.65,
              widget: CustomAppBar(),
            ),
            Padding(
              padding: context.whiteBackgroundMainPadding,
              //TODO:Settings
              child: WhiteForegroundSection(
                height: context.height / 1.20,
                widget: SettingsSection(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
