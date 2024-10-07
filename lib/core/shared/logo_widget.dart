import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants/app_constants.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
    this.size,
    this.radius = AppConst.borderRadius,
  });
  final double? size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(padding()),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: context.theme.primaryColor,
      ),
      // child: SvgPicture.asset(
      //   AppAssets.logo,
      //   fit: BoxFit.contain,
      // ),
    );
  }

  double padding() => size == null ? 10 : size! * 0.04286;
}
