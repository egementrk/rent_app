part of main_page;

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundSection(
          height: context.height * 0.45,
          widget: CustomAppBar(),
        ),
        Padding(
          padding: context.whiteBackgroundMainPadding,
          child: WhiteForegroundSection(
            height: context.height / 1,
            widget: MainContentSection(),
          ),
        ),
      ],
    );
  }
}
