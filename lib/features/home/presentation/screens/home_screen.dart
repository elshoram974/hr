import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              child: CircleAvatar(
                  // radius: Get.,
                  ),
            ),
            TextSliverWidget(text: "صبـــاح الخيـر"),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                decoration: BoxDecoration(
                  color: context.theme.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.vertical(
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