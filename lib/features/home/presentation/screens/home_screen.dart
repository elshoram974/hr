import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/core/shared/circular_image_widget.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';

import '../controller/home_controller.dart';
import '../widgets/expanded_home_body_widget.dart';
import '../widgets/text_sliver_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.sizeOf(context);
    final HomeController controller = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: context.theme.primaryColor,
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            TextSliverWidget(
              text: S.of(context).helloUserName(controller.user.name),
            ),
            SliverToBoxAdapter(
              child: CircularImageWidget(
                imageUrl: controller.user.image,
                radius: 0.3 * screen.shortestSide,
              ),
            ),
            TextSliverWidget(text: S.of(context).goodMorning),
            const ExpandedHomeBodyWidget(),
          ],
        ),
      ),
    );
  }
}