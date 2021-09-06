import 'package:flutter/material.dart';

class TextGlobal extends StatelessWidget {
  final String value;
  final double fontSize;
  final FontWeight fontWeight;
  final Color fontColor;
  final String fontFamily;
  final int? maxLines;
  final double margin;
  final double? containerWidth;
  final double? lineHeight;
  final TextAlign? textAlign;

  const TextGlobal({
    Key? key,
    this.fontWeight = FontWeight.normal,
    this.maxLines,
    this.margin = 0.0,
    this.containerWidth,
    this.lineHeight,
    this.textAlign,
    required this.value,
    required this.fontSize,
    required this.fontFamily,
    required this.fontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: this.containerWidth,
          child: Text(
            this.value,
            textAlign: this.textAlign,
            maxLines: this.maxLines,
            textScaleFactor: 1.0,
            style: TextStyle(
              color: this.fontColor,
              height: this.lineHeight,
              fontSize: this.fontSize,
              fontWeight: this.fontWeight,
              fontFamily: this.fontFamily,
            ),
          ),
        ),
        SizedBox(
          height: this.margin,
        )
      ],
    );
  }
}
