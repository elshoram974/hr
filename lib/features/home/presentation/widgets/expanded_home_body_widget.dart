import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/core/shared/responsive/constrained_box.dart';
import 'package:hr/core/utils/constants/app_constants.dart';

import 'time_row_widget.dart';

class ExpandedHomeBodyWidget extends StatelessWidget {
  const ExpandedHomeBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double padding = 2 * AppConst.defaultPadding;
    return SliverFillRemaining(
      hasScrollBody: false,
      fillOverscroll: true,
      child: Container(
        padding: const EdgeInsets.only(
          top: padding,
          left: padding,
          right: padding,
        ),
        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(40),
          ),
        ),
        child: const MyResConstrainedBoxAlign(
          child: Column(
            children: [
              TimeRowWidget(padding: padding),
              SizedBox(height: AppConst.defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
