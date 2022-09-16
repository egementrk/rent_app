part of login_page;

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundSection(
            height: context.height * 0.50,
          ),
          CustomHead(),
          Padding(
            padding: context.whiteBackgroundNewPasswordPadding,
            child: WhiteForegroundSection(
              widget: ChangePasswordBody(),
              height: context.height * 0.45,
            ),
          ),
        ],
      ),
    );
  }
}
