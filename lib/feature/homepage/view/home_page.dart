import 'package:emailinbox_oguzhan_onal/feature/bottombar/bottom_bar.dart';
import 'package:emailinbox_oguzhan_onal/product/components/color/colors.dart';
import 'package:emailinbox_oguzhan_onal/product/components/text/app_text.dart';
import 'package:emailinbox_oguzhan_onal/product/components/text/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: SvgPicture.asset('assets/images/landing.svg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill),
        ),
        Column(
          children: [
            Container(
              height: context.dynamicHeight(0.16),
            ),
            SizedBox(
              height: context.dynamicHeight(0.20),
              child: Padding(
                padding: EdgeInsets.only(
                    left: context.dynamicWidth(0.11),
                    right: context.dynamicWidth(0.11)),
                child: Column(
                  children: [
                    Text(AppText.first,
                        textAlign: TextAlign.center,
                        style: TextStyles().textStyle1),
                    Text(
                      AppText.second,
                      textAlign: TextAlign.center,
                      style: TextStyles().textStyle2,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: context.dynamicHeight(0.48),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: TextButton(
                  onPressed: () => {context.navigateToPage(BottomBar())},
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child:
                          Text(AppText.third, style: TextStyles().textStyle3),
                    ),
                    width: 205,
                    height: 56,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        boxShadow: [
                          BoxShadow(
                              color: ConstColors.boxShadow,
                              offset: Offset(10, 10),
                              blurRadius: 20,
                              spreadRadius: 0)
                        ],
                        color: ConstColors.white),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
