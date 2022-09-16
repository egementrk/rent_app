part of login_page;

class CustomConnectionButton extends StatelessWidget {
  final String buttonText, icon;
  final Function() onPressed;
  const CustomConnectionButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: onPressed,
          child: Row(
            children: [
              SizedBox(
                height: context.sizedBoxConnectionButtonLogoHeight,
                child: Image.asset(icon),
              ),
              Text(buttonText),
            ],
          ),
        ),
      ],
    );
  }
}

class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
