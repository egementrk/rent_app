import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  String buttonText;
  VoidCallback onPressed;
  CustomElevatedButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontWeight: FontWeight.w600)),
            onPressed: onPressed,
            child: Text(buttonText),
          ),
        ),
      ],
    );
  }
}
