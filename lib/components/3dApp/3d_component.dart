import 'package:flutter/material.dart';
import 'package:practice_app/components/3dApp/widgets/3d_dots.dart';
import 'package:practice_app/components/3dApp/widgets/3d_onboarding.dart';
import 'package:practice_app/constants/3d_constants/3d_theme.dart';
import 'package:practice_app/shared/button.dart';

import '3d_login_component.dart';

class LayoutComponent extends StatefulWidget {
  LayoutComponent({Key? key}) : super(key: key);

  @override
  _LayoutComponentState createState() => _LayoutComponentState();
}

class _LayoutComponentState extends State<LayoutComponent> {
  late double dotIndicatorPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (_, constraints) {
          
          if (constraints.maxHeight < 700) {
            dotIndicatorPosition = constraints.maxHeight * .77;
          } else {
            dotIndicatorPosition = constraints.maxHeight * .8;
          }

          return Container(
            width: size.width,
            padding: EdgeInsets.all(size.width * .05),
            constraints: BoxConstraints(
              maxHeight: constraints.maxHeight,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: dotIndicatorPosition,
                  child: Container(
                    width: size.width * .35,
                    child: Row(
                      children: [
                        DotAumentedWidget(
                          isActive: true,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        DotAumentedWidget(
                          isActive: false,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        DotAumentedWidget(
                          isActive: false,
                        ),
                      ],
                    ),
                  ),
                ),
                OnboardingAugmentedWidget(
                  imgWidth: constraints.maxWidth,
                  imgHeight: constraints.maxHeight * .45,
                  textWidth: size.width,
                  child: Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: ButtonGlobal(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => LoginAugmentedComponent())),
                        buttonHeight: 75.0,
                        buttonColor: AugmentedTheme.kPurpleMain,
                        buttonValue: 'Get Started to explore',
                        buttonValueFamily: 'Inter',
                        buttonValueSize: 20.0,
                        buttonValueColor: AugmentedTheme.kWhite,
                        borderRadius: 26.0,
                        buttonPaddingY: 25.0,
                        buttonWidth: double.infinity,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
