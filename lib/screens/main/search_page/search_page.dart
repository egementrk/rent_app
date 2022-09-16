part of main_page;

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search Page',
      debugShowCheckedModeBanner: false,
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
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              BackgroundSection(
                height: context.height * 0.65,
                widget: CustomAppBar(),
              ),
              SearchPageBody(),
            ],
          )),
    );
  }
}
