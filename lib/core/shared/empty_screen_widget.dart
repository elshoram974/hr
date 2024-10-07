import 'package:flutter/material.dart';

import '../utils/config/locale/generated/l10n.dart';
import '../utils/extensions/theme_ex.dart';

class EmptyScreenWidget extends StatelessWidget {
  const EmptyScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).noData,
        style: context.textTheme.bodyLarge,
      ),
    );
  }
}
