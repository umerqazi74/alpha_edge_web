import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 640;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 640;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1400;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      // builder: (context, constraints) {
      //   if (constraints.maxWidth >= 1200) {
      //     return desktop;
      //   }
      //   // If width it less then 1100 and more then 650 we consider it as tablet
      //   else if (constraints.maxWidth >= 640) {
      //     return tablet;
      //   }
      //   // Or less then that we called it mobile
      //   else {
      //     return mobile;
      //   }
      // },


      // when you done mobile and tab design thne you can remove this code and uncomment upper code
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200 ||constraints.maxWidth >= 640||constraints.maxWidth < 640) {
          return desktop;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 640) {
          return tablet;
        }
        // Or less then that we called it mobile
        else {
          return mobile;
        }
      },
    );
  }
}
