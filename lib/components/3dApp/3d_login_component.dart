import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice_app/components/3dApp/widgets/3d_form.dart';
import 'package:practice_app/constants/3d_constants/3d_theme.dart';
import 'dart:math' as math;

class LoginAugmentedComponent extends StatefulWidget {
  LoginAugmentedComponent({Key? key}) : super(key: key);

  @override
  _LoginAugmentedComponentState createState() =>
      _LoginAugmentedComponentState();
}

class _LoginAugmentedComponentState extends State<LoginAugmentedComponent> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (_, constraints) => SingleChildScrollView(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                width: size.width,
                padding: EdgeInsets.all(size.width * .05),
                decoration: BoxDecoration(
                  color: AugmentedTheme.kWhite,
                ),
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height * .4,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: Container(
                              width: size.width * .6,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/img/3d_3.png',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: -size.width * .53,
                            top: size.height * .06,
                            child: Container(
                              width: size.width * .45,
                              child: Transform(
                                transform: Matrix4.rotationY(math.pi),
                                child: Image(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                    'assets/img/3d_4.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 60.0),
                    FormAugmentedWidget(),
                    SizedBox(height: 28.0),
                    RichText(
                      text: TextSpan(
                        text: 'Have not any account? ',
                        style: TextStyle(
                          color: AugmentedTheme.kPurpleForgot.withOpacity(.7),
                          fontSize: 20.0,
                        ),
                        children: [
                          TextSpan(
                            text: 'Sign up!',
                            style: TextStyle(
                              color: AugmentedTheme.kPurpleForgot,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
