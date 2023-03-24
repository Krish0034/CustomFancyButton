import 'package:flutter/material.dart';

class CustomFancyButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool loading;
  final Color buttonColor;
  final Color bordrColor;
  final Color textColor;
  final double borderRadius;
  final double borderWidth;
  final double buttonWidth;
  final double buttonHeight;
  final double textSize;

  const CustomFancyButton(
      {Key? key,
      this.textSize = 19,
      this.borderWidth = 0.6,
      this.bordrColor = Colors.black,
      this.buttonColor = Colors.black,
      this.borderRadius = 30,
      this.buttonWidth = 350,
      this.buttonHeight = 50,
      this.text = 'CustomFancyButton',
      required this.onTap,
      this.loading = false,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
            color: bordrColor,
            border: Border.all(color: bordrColor, width: borderWidth),
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  strokeWidth: 3,
                  color: Colors.redAccent,
                )
              : Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: textSize,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.0,
                  ),
                ),
        ),
      ),
    );
  }
}
