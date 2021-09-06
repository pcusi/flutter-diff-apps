import 'package:flutter/material.dart';
import 'package:practice_app/shared/text.dart';

class ButtonGlobal extends StatelessWidget {
  final Color buttonColor;
  final double buttonWidth;
  final double buttonHeight;
  final String buttonValue;
  final double buttonValueSize;
  final String buttonValueFamily;
  final Color buttonValueColor;
  final FontWeight buttonValueWeight;
  final double borderRadius;
  final double buttonPaddingX;
  final double buttonPaddingY;
  final VoidCallback onTap;
  final bool isBlock;
  const ButtonGlobal({
    Key? key,
    this.isBlock = false,
    this.buttonWidth = 0.0,
    this.buttonHeight = 0.0,
    this.buttonValueWeight = FontWeight.normal,
    this.buttonValueFamily = '',
    this.borderRadius = 0.0,
    this.buttonPaddingX = 0.0,
    this.buttonPaddingY = 0.0,
    required this.onTap,
    required this.buttonColor,
    required this.buttonValue,
    required this.buttonValueSize,
    required this.buttonValueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: this.buttonPaddingX,
          vertical: this.buttonPaddingY,
        ),
        width: this.isBlock ? double.infinity : this.buttonWidth,
        height: this.buttonHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(this.borderRadius),
          color: this.buttonColor,
        ),
        child: Align(
          alignment: Alignment.center,
          child: TextGlobal(
            fontFamily: this.buttonValueFamily,
            value: this.buttonValue,
            fontSize: this.buttonValueSize,
            fontColor: this.buttonValueColor,
            fontWeight: this.buttonValueWeight,
          ),
        ),
      ),
    );
  }
}
