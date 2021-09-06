import 'package:flutter/material.dart';
import 'package:practice_app/components/3dApp/3d_search_component.dart';
import 'package:practice_app/components/3dApp/widgets/3d_brand.dart';
import 'package:practice_app/constants/3d_constants/3d_brands.dart';
import 'package:practice_app/constants/3d_constants/3d_theme.dart';
import 'package:practice_app/shared/3dAppIcons/woo_icons.dart';
import 'package:practice_app/shared/text.dart';

class MainAugmentedComponent extends StatefulWidget {
  MainAugmentedComponent({Key? key}) : super(key: key);

  @override
  _MainAugmentedComponentState createState() => _MainAugmentedComponentState();
}

class _MainAugmentedComponentState extends State<MainAugmentedComponent> {
  int indexSelected = 0;
    double brandHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (_, constraints) {

          if (constraints.maxHeight < 700) {
            brandHeight = size.height * .09;
          } else {
            brandHeight = size.height * .078;
          }


          return Container(
            width: size.width,
            constraints: BoxConstraints(
              maxHeight: constraints.maxHeight,
            ),
            padding: EdgeInsets.only(
              left: size.width * .05,
              top: size.width * .05,
            ),
            decoration: BoxDecoration(color: AugmentedTheme.kWhite),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Navbar
                  Container(
                    width: size.width,
                    height: size.height * .10,
                    margin: EdgeInsets.only(
                      right: size.width * .05,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * .30,
                          height: double.infinity,
                          child: Image(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/img/3d_logo.png'),
                          ),
                        ),
                        Container(
                          width: size.width * .13,
                          height: size.width * .13,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AugmentedTheme.kPurpleOpacity,
                          ),
                          child: Icon(
                            AugmentedWoo.bell,
                            color: AugmentedTheme.kWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * .025),
                  //Title and description
                  Container(
                    width: size.width,
                    margin: EdgeInsets.only(
                      right: size.width * .05,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextGlobal(
                          containerWidth: size.width * .85,
                          value: 'Better Designs with 3D Assets',
                          fontSize: size.height * .045,
                          fontFamily: 'DMSans',
                          fontColor: AugmentedTheme.kBlack,
                          fontWeight: FontWeight.bold,
                          lineHeight: 1.5,
                          margin: 8.0,
                        ),
                        TextGlobal(
                          containerWidth: size.width * .75,
                          value:
                              'The 10 best and most popular places for 3D Assets 😎',
                          fontSize: size.height * .028,
                          fontFamily: 'DMSans',
                          fontColor: AugmentedTheme.kBlack,
                          lineHeight: 1.7,
                        ),
                        SizedBox(height: size.height * .035),
                      ],
                    ),
                  ),
                  //Brands horizontal
                  Container(
                    height: brandHeight,
                    child: ListView.builder(
                      itemCount: AugmentedBrands.brands.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        final brands = AugmentedBrands.brands[index];
                        return BrandAugmentedWidget(
                          onTap: () {
                            setState(() {
                              indexSelected = index;
                            });
                          },
                          containerColor: indexSelected == index
                              ? AugmentedTheme.kPurpleMain
                              : AugmentedTheme.kPurpleMain.withOpacity(.1),
                          fontColor: indexSelected == index
                              ? AugmentedTheme.kWhite
                              : AugmentedTheme.kBlack.withOpacity(.65),
                          value: '${brands.name}',
                          fontSize: size.height * .023,
                          heightSize: double.infinity,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: size.height * .035),
                  //Assets container
                  Container(
                    width: constraints.maxWidth,
                    margin: EdgeInsets.only(
                      right: size.width * .05,
                    ),
                    height: 400.0,
                    child: Stack(
                      children: [
                        Container(
                          width: size.width * .47,
                          height: size.height * .4,
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: AugmentedTheme.kPurpleMain.withOpacity(.17),
                            border: Border.all(
                              color: AugmentedTheme.kBlack.withOpacity(.04),
                            ),
                          ),
                          child: Image(
                            fit: BoxFit.cover,
                            width: double.infinity,
                            image: AssetImage('assets/img/3d_1.png'),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            width: size.width * .42,
                            height: size.height * .195,
                            padding: EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90.0),
                              color: AugmentedTheme.kSky,
                              border: Border.all(
                                color: AugmentedTheme.kBlack.withOpacity(.04),
                              ),
                            ),
                            child: Image(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/img/3d_3.png')),
                          ),
                        ),
                        Positioned(
                          top: size.height * .225,
                          right: 0,
                          child: Container(
                            width: size.width * .45,
                            height: size.height * .45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(126.0),
                                topRight: Radius.circular(9.0),
                              ),
                              color: AugmentedTheme.kPink.withOpacity(.28),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: -size.height * .08,
                                  left: -size.width * .02,
                                  child: Image(
                                    width: size.width * .65,
                                    height: size.height * .5,
                                    image: AssetImage('assets/img/3d_2.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: size.height * .42,
                          left: 0,
                          child: Container(
                            width: size.width * .45,
                            height: size.height * .35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9.0),
                                topRight: Radius.circular(126.0),
                                bottomLeft: Radius.circular(9.0),
                                bottomRight: Radius.circular(9.0),
                              ),
                              color: AugmentedTheme.kBrown.withOpacity(.11),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: -size.height * .02,
                                  left: -size.height * .01,
                                  child: Image(
                                    width: size.width * .45,
                                    height: size.height * .5,
                                    image: AssetImage('assets/img/3d_4.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
      bottomNavigationBar: Container(
        width: size.width,
        height: size.height * .05,
        margin: EdgeInsets.all(size.width * .05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              AugmentedWoo.home,
              color: AugmentedTheme.kPurpleMain,
              size: 36.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => SearchAugmentedComponent()));
              },
              child: Icon(
                AugmentedWoo.search,
                color: AugmentedTheme.kPurpleMain.withOpacity(.35),
                size: 36.0,
              ),
            ),
            Icon(
              AugmentedWoo.flag,
              color: AugmentedTheme.kPurpleMain.withOpacity(.35),
              size: 36.0,
            ),
            Container(
              width: 36.0,
              height: 36.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:
                    Border.all(color: AugmentedTheme.kPurpleMain, width: 3.0),
              ),
              child: Image(
                image: AssetImage('assets/img/avatar.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
