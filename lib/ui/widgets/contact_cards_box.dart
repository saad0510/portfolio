import 'package:flutter/material.dart';

import '../../core/assets/app_icon.dart';
import '../../theme/sizes.dart';
import 'contact_card.dart';

class ContactCardsBox extends StatelessWidget {
  const ContactCardsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: Sizes.s32.value,
      runSpacing: Sizes.s64.value,
      children: const [
        ContactCard(
          icon: AppIcons.phone,
          value: '+92 313 3094567',
        ),
        ContactCard(
          icon: AppIcons.send,
          value: 'saadbinkhalid.dev\n@gmail.com',
        ),
        ContactCard(
          icon: AppIcons.home,
          value: 'Karachi, Pakistan',
        ),
      ],
    );
  }
}
