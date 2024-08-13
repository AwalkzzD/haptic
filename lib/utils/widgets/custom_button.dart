import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final double width;
  final Color color;
  final Color textColor;
  final Function() onPressed;

  const CustomButton({
    super.key,
    required this.btnText,
    required this.onPressed,
    this.width = double.infinity,
    this.textColor = Colors.white,
    this.color = Colors.deepOrange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: OutlinedButton(
        onPressed: () {
          onPressed.call();
        },
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: color,
          side: BorderSide(color: color),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Less rounded border
          ),
          minimumSize: Size(width, 40), // More width
        ),
        child: Text(btnText,
            style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500)
                .copyWith(color: textColor)),
      ),
    );
  }
}
