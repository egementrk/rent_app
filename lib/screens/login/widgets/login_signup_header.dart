part of login_page;

class LoginSignupHeader extends StatelessWidget {
  final String header, subtitle;
  const LoginSignupHeader({
    Key? key,
    required this.header,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              header,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Icon(Icons.person),
          ],
        ),
        SizedBox(height: context.sizedBoxHeightLow),
        Text(
          subtitle,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
        ),
      ],
    );
  }
}
