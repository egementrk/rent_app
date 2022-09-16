part of login_page;

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Function(String)? onChanged;
  const CustomTextField({
    Key? key,
    required this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
