part of login_page;

class ChangePasswordBody extends StatelessWidget {
  const ChangePasswordBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? _email = Provider.of<EmailProvider>(context, listen: false).getEmail;
    String _password = "", _rePassword = "";
    return Padding(
      padding: context.mainPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LoginSignupHeader(
            header: AppLocalizations.of(context)!.create_new_password,
            subtitle: AppLocalizations.of(context)!.create_new_password_subtitle,
          ),
          SizedBox(height: context.sizedBoxHeightLow),
          CustomTextField(
            hintText: AppLocalizations.of(context)!.new_password,
            onChanged: (value) {
              _password = value;
            },
          ),
          SizedBox(height: context.sizedBoxHeightLow),
          CustomTextField(hintText: AppLocalizations.of(context)!.confirm_password),
          SizedBox(height: context.sizedBoxHeightLow),
          CustomElevatedButton(
            buttonText: AppLocalizations.of(context)!.confirm,
            onPressed: () async {
              if (await passwordChange(_email ?? '', _password) == '200' && _password == _rePassword) {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              } else {}
            },
          ),
        ],
      ),
    );
  }
}
