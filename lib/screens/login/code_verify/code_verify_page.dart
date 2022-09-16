part of login_page;

class CodeVerifyPage extends StatelessWidget {
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
              widget: CodeVerifyBody(),
              height: context.height * 0.35,
            ),
          ),
        ],
      ),
    );
  }
}
