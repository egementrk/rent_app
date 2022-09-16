part of main_page;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: context.paddingLow,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: context.sizedBoxAltogicLogoHeight,
              child: Image.asset(
                'assets/images/altogic_logo.png',
              ),
            ),
            Text(
              //TODO
              'Altogic Cleaner',
              style: TextStyle(
                color: purplePalette.shade900,
                fontWeight: FontWeight.w300,
              ),
            ),
            Spacer(),
            CustomCircleAvatar(radius: 25)
          ],
        ),
      ),
    );
  }
}
