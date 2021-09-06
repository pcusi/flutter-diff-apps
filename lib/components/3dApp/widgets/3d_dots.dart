import 'package:flutter/material.dart';
import 'package:practice_app/constants/3d_constants/3d_theme.dart';

class DotAumentedWidget extends StatefulWidget {
  final bool isActive;
  DotAumentedWidget({Key? key, this.isActive = false}) : super(key: key);

  @override
  _DotAumentedWidgetState createState() => _DotAumentedWidgetState();
}

class _DotAumentedWidgetState extends State<DotAumentedWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      width: 25.0,
      height: 7.0,
      decoration: BoxDecoration(
        color: widget.isActive
            ? AugmentedTheme.kPurpleMain
            : AugmentedTheme.kPurpleMain.withOpacity(.3),
        borderRadius: BorderRadius.all(
          Radius.circular(7.0),
        ),
      ),
    );
  }
}
