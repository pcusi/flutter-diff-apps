import 'package:flutter/material.dart';
import 'package:practice_app/constants/3d_constants/3d_theme.dart';
import 'package:practice_app/shared/text.dart';

class OnboardingAugmentedWidget extends StatefulWidget {
  final double imgWidth;
  final double imgHeight;
  final double textWidth;
  final Widget child;

  OnboardingAugmentedWidget({
    Key? key,
    required this.imgWidth,
    required this.imgHeight,
    required this.textWidth,
    required this.child,
  }) : super(key: key);

  @override
  _OnboardingAugmentedWidget createState() => _OnboardingAugmentedWidget();
}

class _OnboardingAugmentedWidget extends State<OnboardingAugmentedWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        //Image
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: widget.imgWidth,
            height: widget.imgHeight,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.redAccent.withOpacity(.15),
                  blurRadius: 100.0,
                  spreadRadius: 1.0,
                )
              ]
            ),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/img/3d_2.png',
              ),
            ),
          ),
        ),
        //Description
        Container(
          width: widget.textWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextGlobal(
                containerWidth: widget.textWidth,
                value: 'Fly Fly To Space',
                fontSize: size.height * .05,
                fontFamily: 'DMSans',
                fontWeight: FontWeight.w700,
                fontColor: AugmentedTheme.kBlack,
                margin: 24.0,
                lineHeight: 1.5,
              ),
              TextGlobal(
                value: 'High-quality 3D models for VFX, game development, VR/AR, architecture, UI Design and animation.',
                fontSize: size.height * .03,
                fontFamily: 'Inter',
                fontColor: AugmentedTheme.kBlack,
                lineHeight: 1.7,
              ),
            ],
          ),
        ),
        widget.child,
      ],
    );
  }
}
