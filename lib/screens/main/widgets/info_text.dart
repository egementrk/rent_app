part of main_page;

class InfoText extends StatelessWidget {
  final String infoText;
  const InfoText({
    Key? key,
    required this.infoText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      infoText,
      style: TextStyle(color: Colors.grey),
    );
  }
}
