part of main_page;

class BackgroundSection extends StatelessWidget {
  final Widget? widget;
  final double? height;
  const BackgroundSection({
    Key? key,
    this.widget,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      //height: context.height * 0.40,
      //TODO: height: height,
      decoration: BoxDecoration(
        color: purplePalette,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
      child: Column(
        children: [
          widget ?? Row(),
        ],
      ),
    );
  }
}
