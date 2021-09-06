import 'package:flutter/material.dart';
import 'package:practice_app/constants/3d_constants/3d_theme.dart';

// ignore: must_be_immutable
class InputOutlineGlobal extends StatelessWidget {
  final bool isPassword;
  final String hintText;
  final String labelText;
  final Color hintColor;
  final Color labelColor;
  final Function(String) onChanged;
  final Color focusedBorder;
  final Color enabledBorder;

  InputOutlineGlobal(
      {Key? key,
      this.isPassword = false,
      required this.onChanged,
      required this.hintText,
      required this.labelText,
      required this.focusedBorder,
      required this.enabledBorder,
      required this.labelColor,
      required this.hintColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: this.isPassword ? true : false,
      style: TextStyle(
        fontFamily: 'Inter',
        color: this.labelColor,
        fontWeight: FontWeight.w700,
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: AugmentedTheme.kWhite,
        hintText: this.hintText,
        hintStyle: TextStyle(
          fontFamily: 'Inter',
          color: this.hintColor,
          fontWeight: FontWeight.w700,
          fontSize: 20.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide(
            color: this.enabledBorder,
            width: 3.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide(
            color: this.focusedBorder,
            width: 3.0,
          ),
        ),
        labelText: this.labelText,
        labelStyle: TextStyle(
          fontFamily: 'Inter',
          color: this.labelColor,
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
        suffixIcon: Icon(
          Icons.visibility,
          color: this.isPassword ? AugmentedTheme.kPurpleMain.withOpacity(.45) : AugmentedTheme.kWhite,
          size: 24.0,
        ),
      ),
      onChanged: this.onChanged,
    );
  }
}
