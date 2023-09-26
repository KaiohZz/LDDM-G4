import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;
  final double borderRadius;
  final String buttonText;
  final double buttonFontSize;

  const CustomButton({
    super.key,
    required this.onPressed,
    this.width = 100.0, // Default width
    this.height = 100.0, // Default height
    this.borderRadius = 20.0, // Default border radius
    this.buttonText = 'Custom Text', // Default button text
    this.buttonFontSize = 16.0, // Default font size
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF626262), // Hex color #626262
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white, // Text color
          fontSize: buttonFontSize, // Text font size
        ),
      ),
    );
  }
}
