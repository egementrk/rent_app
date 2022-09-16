part of login_page;

class ForgotPasswordSection extends StatelessWidget {
  final Function()? onPressed;
  const ForgotPasswordSection({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        TextButton(
          onPressed: onPressed,
          child: Text(
            AppLocalizations.of(context)!.forgot_password,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}
