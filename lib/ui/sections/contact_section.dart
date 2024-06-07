import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/extensions/theme_ext.dart';
import '../../theme/sizes.dart';
import '../widgets/contact_cards_box.dart';
import '../widgets/contact_form.dart';
import 'base_section.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET))
      return BaseSection(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Let\'s Create Awesome\nProduct Together',
              textAlign: TextAlign.center,
              style: context.typography.displaySmall,
            ),
            Sizes.s32.spaceY,
            const ContactForm(),
            Sizes.s100.spaceY,
            const ContactCardsBox(),
          ],
        ),
      );

    return BaseSection(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Let\'s Create Awesome\nProduct Together',
            style: context.typography.displaySmall,
          ),
          Sizes.s32.spaceY,
          Row(
            children: [
              const Expanded(
                flex: 3,
                child: ContactForm(),
              ),
              Sizes.s64.spaceX,
              const Expanded(
                child: ContactCardsBox(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
