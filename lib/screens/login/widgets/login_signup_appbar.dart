part of login_page;

class LoginSignupAppBar extends StatelessWidget {
  const LoginSignupAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: context.sizedBoxAltogicLogoHeight,
          child: Image.asset(
            'assets/images/altogic_logo.png',
          ),
        ),
        Text(AppLocalizations.of(context)!.altogic_cleaner),
      ],
    );
  }
}
