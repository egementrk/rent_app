part of login_page;

class PageSubtitle extends StatelessWidget {
  final String prefixText, buttonText;
  final Function()? onPressed;
  const PageSubtitle({
    Key? key,
    required this.buttonText,
    required this.prefixText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(prefixText),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
