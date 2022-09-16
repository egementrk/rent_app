part of main_page;

class WhiteForegroundSection extends StatelessWidget {
  final Widget widget;
  final double height;
  const WhiteForegroundSection({
    Key? key,
    required this.widget,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: context.height / 1.20,
      height: height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: widget,
    );
  }
}
