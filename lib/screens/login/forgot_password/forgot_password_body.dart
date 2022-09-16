part of login_page;

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _email = "";
    return Padding(
      padding: context.mainPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LoginSignupAppBar(),
          SizedBox(height: context.sizedBoxHeightLow),
          SizedBox(
            height: context.height * 0.30,
            child: Image.asset('assets/images/repair.png'),
          ),
          SizedBox(height: context.sizedBoxHeightLow),
          LoginSignupHeader(
            header: AppLocalizations.of(context)!.forgot_password,
            subtitle: AppLocalizations.of(context)!.forgot_password,
          ),
          SizedBox(height: context.sizedBoxHeightLow),
          CustomTextField(
            hintText: AppLocalizations.of(context)!.email,
            onChanged: (value) {
              _email = value;
            },
          ),
          SizedBox(height: context.sizedBoxHeightLow),
          CustomElevatedButton(
            buttonText: AppLocalizations.of(context)!.send_code,
            onPressed: () async {
              if (await verificationEmailSend(_email) == '200') {
                Provider.of<EmailProvider>(context, listen: false).setProviderEmail(_email);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeVerifyPage(),
                  ),
                );
              } else {}
            },
          ),
        ],
      ),
    );
  }
}
