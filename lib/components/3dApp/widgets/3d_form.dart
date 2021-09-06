import 'package:flutter/material.dart';
import 'package:practice_app/components/3dApp/3d_main_component.dart';
import 'package:practice_app/constants/3d_constants/3d_theme.dart';
import 'package:practice_app/shared/button.dart';
import 'package:practice_app/shared/input_outline.dart';
import 'package:practice_app/shared/text.dart';

class FormAugmentedWidget extends StatefulWidget {
  FormAugmentedWidget({
    Key? key,
  }) : super(key: key);

  @override
  _AugmentedFormWidgetState createState() => _AugmentedFormWidgetState();
}

class _AugmentedFormWidgetState extends State<FormAugmentedWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            InputOutlineGlobal(
              onChanged: (value) => print(value),
              hintText: 'Userexample',
              hintColor: AugmentedTheme.kPurpleMain,
              labelText: 'Username',
              labelColor: AugmentedTheme.kPurpleMain.withOpacity(.5),
              focusedBorder: AugmentedTheme.kPurpleMain,
              enabledBorder: AugmentedTheme.kPurpleMain.withOpacity(.25),
            ),
            SizedBox(height: 32.0),
            InputOutlineGlobal(
              onChanged: (value) => print(value),
              hintText: '************',
              hintColor: AugmentedTheme.kPurpleMain,
              isPassword: true,
              labelText: 'Password',
              labelColor: AugmentedTheme.kPurpleMain.withOpacity(.5),
              focusedBorder: AugmentedTheme.kPurpleMain,
              enabledBorder: AugmentedTheme.kPurpleMain.withOpacity(.30),
            ),
            SizedBox(height: 12.0),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: TextGlobal(
                  value: 'Forgot Password?',
                  fontSize: 20.0,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  fontColor: AugmentedTheme.kPurpleForgot.withOpacity(.7),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ButtonGlobal(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => MainAugmentedComponent())),
              buttonColor: AugmentedTheme.kPurpleMain,
              buttonValue: 'Sign in',
              buttonValueSize: 24.0,
              buttonValueColor: AugmentedTheme.kWhite,
              borderRadius: 26.0,
              isBlock: true,
              buttonPaddingY: 25.0,
              buttonHeight: 80.0,
            )
          ],
        ),
      ),
    );
  }
}
