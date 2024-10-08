import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/core/shared/filled_button.dart';
import 'package:hr/core/utils/constants/app_constants.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "welcome",
              style: context.textTheme.displaySmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "HR Manager",
              style: context.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            const Spacer(flex: 5),

            //image

            CustomFilledButton(
              text: "Start Now",
              onPressed: () {},
              style: context.textTheme.displaySmall,
              minimumSize: const Size(256, 64),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child: const Text("English")),
                const SizedBox(width: AppConst.defaultPadding),
                TextButton(onPressed: () {}, child: const Text("العربية")),
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
