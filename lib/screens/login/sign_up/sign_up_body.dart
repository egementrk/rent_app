part of login_page;

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _fullName = "", _email = "", _password = "", _rePassword = "";
    return Padding(
      padding: context.mainPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LoginSignupAppBar(),
          SizedBox(height: context.sizedBoxAltogicLogoHeight),
          LoginSignupHeader(
            header: AppLocalizations.of(context)!.sign_up_account,
            subtitle: AppLocalizations.of(context)!.sign_up_subtitle,
          ),
          SizedBox(height: context.sizedBoxHeightLow),
          CustomTextField(
            hintText: AppLocalizations.of(context)!.full_name,
            onChanged: (value) {
              _fullName = value;
            },
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
          SizedBox(height: context.sizedBoxHeightLow),
          CustomTextField(
            hintText: AppLocalizations.of(context)!.confirm_password,
            onChanged: (value) {
              _rePassword = value;
            },
          ),
          SizedBox(height: context.sizedBoxHeightLow),
          Text(
            AppLocalizations.of(context)!.sign_up_terms_policy_subtitle,
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: context.sizedBoxHeightLow),
          CustomElevatedButton(
            buttonText: AppLocalizations.of(context)!.sign_up,
            onPressed: () async {
              if (await signupUser(_email, _password, _fullName) == '200' && _password == _rePassword) {
                Navigator.pop(context);
              } else {}
            },
          ),
          PageSubtitle(
            buttonText: AppLocalizations.of(context)!.login,
            prefixText: AppLocalizations.of(context)!.have_an_account,
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
