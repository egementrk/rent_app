part of login_page;

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String _email = "", _password = "";

    return Padding(
      padding: context.mainPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LoginSignupAppBar(),
          SizedBox(height: context.sizedBoxHeightHigh),
          LoginSignupHeader(
            header: AppLocalizations.of(context)!.login_account,
            subtitle: AppLocalizations.of(context)!.login_subtitle,
          ),
          SizedBox(height: context.sizedBoxHeightLow),
          CustomTextField(
            hintText: AppLocalizations.of(context)!.email,
            onChanged: (value) {
              _email = value;
            },
          ),
          SizedBox(height: context.sizedBoxHeightLow),
          CustomTextField(
            hintText: AppLocalizations.of(context)!.password,
            onChanged: (value) {
              _password = value;
            },
          ),
          ForgotPasswordSection(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ForgotPasswordPage(),
              ),
            );
          }),
          CustomElevatedButton(
            onPressed: () async {
              if (await loginUser(_email, _password) == '200') {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => MainPage()),
                );
              }
            },
            buttonText: AppLocalizations.of(context)!.login,
          ),
          SizedBox(height: context.sizedBoxHeightLow),
          DividerSection(),
          SizedBox(height: context.sizedBoxHeightLow),
          CustomConnectionButton(
            icon: 'assets/images/google.png',
            buttonText: AppLocalizations.of(context)!.google,
            onPressed: () {},
          ),
          SizedBox(height: context.sizedBoxHeightLow),
          PageSubtitle(
            prefixText: AppLocalizations.of(context)!.not_register,
            buttonText: AppLocalizations.of(context)!.create_an_acount,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
