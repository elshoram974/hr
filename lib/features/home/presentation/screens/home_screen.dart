import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/core/shared/custom_image_widget.dart';

import '../widgets/text_sliver_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: context.theme.primaryColor,
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            TextSliverWidget(text: "أهلاً، محمد أحمد"),
            SliverToBoxAdapter(
              child: CustomImageWidget(
                imageUrl: "http://via.placeholder.com/200x2048",
                dimension: 0.3 * screen.shortestSide,
              ),
            ),
            TextSliverWidget(text: "صبـــاح الخيـر"),
            SliverFillRemaining(
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
            ),
          ],
        ),
      ),
    );
  }
}
