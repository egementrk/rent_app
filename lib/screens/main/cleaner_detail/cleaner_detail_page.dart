part of main_page;

class CleanerDetailPage extends StatelessWidget {
  const CleanerDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundSection(
            height: context.height * 0.45,
            widget: CustomAppBar(),
          ),
          Padding(
            padding: context.whiteBackgroundCleanerDetailPadding,
            child: WhiteForegroundSection(
              height: context.height,
              widget: CleanerDetailContent(),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: context.cleanerDetailAvatarPadding,
                    child: CustomCircleAvatar(radius: context.height * 0.10),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
