import 'package:flutter/material.dart';
import 'package:practice_app/shared/text.dart';

class BrandAugmentedWidget extends StatefulWidget {
  final double heightSize;
  final Color containerColor;
  final Color fontColor;
  final double fontSize;
  final String value;
  final VoidCallback onTap;

  BrandAugmentedWidget({
    Key? key,
    required this.heightSize,
    required this.containerColor,
    required this.fontColor,
    required this.value,
    required this.fontSize,
    required this.onTap,
  }) : super(key: key);

  @override
  _BrandAugmentedWidgetState createState() => _BrandAugmentedWidgetState();
}

class _BrandAugmentedWidgetState extends State<BrandAugmentedWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: widget.heightSize,
        margin: EdgeInsets.only(right: 12.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(76.0),
          color: widget.containerColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextGlobal(
              textAlign: TextAlign.center,
              value: widget.value,
              fontSize: widget.fontSize,
              fontFamily: 'Inter',
              fontColor: widget.fontColor,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
