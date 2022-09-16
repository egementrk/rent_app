part of main_page;

class SwitchButton extends StatelessWidget {
  const SwitchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(value: false, onChanged: (bool) => true);
  }
}
