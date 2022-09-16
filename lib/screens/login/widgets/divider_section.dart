part of login_page;

class DividerSection extends StatelessWidget {
  const DividerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Divider(endIndent: 12)),
        Text(
          AppLocalizations.of(context)!.or_divider,
          style: TextStyle(color: Colors.grey),
        ),
        Expanded(child: Divider(indent: 12)),
      ],
    );
  }
}
