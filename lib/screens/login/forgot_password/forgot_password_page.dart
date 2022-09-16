part of login_page;

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundSection(
            height: context.height * 0.70,
          ),
          Padding(
            padding: context.whiteBackgroundLoginPadding,
            child: WhiteForegroundSection(
              widget: ForgotPasswordBody(),
              height: context.height * 0.85,
            ),
          ),
        ],
      ),
    );
  }
}
