part of main_page;

class CleanerDetailCustomText extends StatelessWidget {
  String title;
  Color color;
  FontWeight? fontWeight;

  CleanerDetailCustomText({
    Key? key,
    required this.color,
    this.fontWeight,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: color, fontWeight: fontWeight),
    );
  }
}
