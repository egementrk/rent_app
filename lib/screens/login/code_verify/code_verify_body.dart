part of login_page;

class CodeVerifyBody extends StatelessWidget {
  const CodeVerifyBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _verificationCode = "";
    return Padding(
      padding: context.mainPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LoginSignupHeader(
              header: AppLocalizations.of(context)!.enter_verification_code,
              subtitle: AppLocalizations.of(context)!.enter_verification_code_subtitle),
          SizedBox(height: context.sizedBoxHeightLow),
          CustomTextField(
            hintText: AppLocalizations.of(context)!.verification_code,
            onChanged: (value) {
              _verificationCode = value;
            },
          ),
          SizedBox(height: context.sizedBoxHeightLow),
          CustomElevatedButton(
            buttonText: AppLocalizations.of(context)!.confirm,
            onPressed: () async {
              if (await verificationCodeSend(_verificationCode) == '200') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangePasswordPage(),
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
