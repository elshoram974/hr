import 'package:flutter/material.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';

import 'time_card.dart';

class TimeRowWidget extends StatelessWidget {
  const TimeRowWidget({super.key, required this.padding});

  final double padding;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 5,
          child: TimeCard(
            title: S.of(context).timeOfEntry,
            time: DateTime.now(),
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 5,
          child: TimeCard(
            title: S.of(context).timeOfExit,
          ),
        ),
      ],
    );
  }
}
