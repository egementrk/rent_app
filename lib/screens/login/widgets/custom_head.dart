part of login_page;

class CustomHead extends StatelessWidget {
  const CustomHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            SizedBox(
              height: context.sizedBoxHeightHigh,
            ),
            SizedBox(
              height: context.height * 0.15,
              child: Image.asset('assets/images/altogic_logo.png'),
            ),
            Text(
              AppLocalizations.of(context)!.altogic_cleaner,
              style: TextStyle(fontWeight: FontWeight.w600, color: purplePalette.shade800),
            )
          ],
        ),
      ],
    );
  }
}
