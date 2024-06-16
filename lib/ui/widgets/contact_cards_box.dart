import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/assets/app_icon.dart';
import '../../providers/current_user_provider.dart';
import '../../theme/sizes.dart';
import 'contact_card.dart';

class ContactCardsBox extends ConsumerWidget {
  const ContactCardsBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);

    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: Sizes.s32.value,
      runSpacing: Sizes.s64.value,
      children: [
        ContactCard(
          icon: AppIcons.phone,
          value: user.phone,
        ),
        ContactCard(
          icon: AppIcons.send,
          value: user.email.split('@').join('\n@'),
        ),
        ContactCard(
          icon: AppIcons.home,
          value: user.residency,
        ),
      ],
    );
  }
}
