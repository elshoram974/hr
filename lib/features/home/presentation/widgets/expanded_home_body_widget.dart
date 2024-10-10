import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpandedHomeBodyWidget extends StatelessWidget {
  const ExpandedHomeBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      fillOverscroll: true,
      child: Container(
        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(40),
          ),
        ),
      ),
    );
  }
}
