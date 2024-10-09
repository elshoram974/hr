import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/core/utils/constants/app_constants.dart';

class TextSliverWidget extends StatelessWidget {
  const TextSliverWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(0.5 * AppConst.defaultPadding),
        child: Center(
          child: Text(
            text,
            style:
                context.textTheme.headlineSmall?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
