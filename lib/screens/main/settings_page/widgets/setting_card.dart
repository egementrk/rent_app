part of main_page;

class SettingCard extends StatelessWidget {
  final String cardText;
  final Widget widget;
  const SettingCard({
    Key? key,
    required this.cardText,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => null,
      child: SizedBox(
        height: 50,
        child: Card(
          elevation: 0,
          color: Colors.transparent,
          child: Row(
            children: [
              Text(cardText),
              Spacer(),
              widget,
            ],
          ),
        ),
      ),
    );
  }
}
