part of login_page;

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        BackgroundSection(
          height: context.height * 0.70,
        ),
        Padding(
          padding: context.whiteBackgroundLoginPadding,
          child: WhiteForegroundSection(
            widget: SignUpBody(),
            height: context.height * 0.85,
          ),
        ),
      ]),
    );
  }
}
