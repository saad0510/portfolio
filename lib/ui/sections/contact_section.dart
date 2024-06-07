import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/extensions/theme_ext.dart';
import '../../theme/sizes.dart';
import '../widgets/contact_card.dart';
import '../widgets/contact_form.dart';
import 'base_section.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    const emailCard = ContactCard(
      icon: Icons.email_rounded,
      value: 'saadbinkhalid.dev\n@gmail.com',
    );
    const phoneCard = ContactCard(
      icon: Icons.phone_rounded,
      value: '+92 313 3094567',
    );

    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo('SEMI_DESKTOP')) {
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
            Sizes.s64.spaceY,
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              spacing: Sizes.s24.value,
              runSpacing: Sizes.s64.value,
              children: const [emailCard, phoneCard],
            ),
          ],
        ),
      );
    }

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
                child: ContactForm(),
              ),
              Sizes.s64.spaceX,
              Column(
                children: [
                  emailCard,
                  Sizes.s100.spaceY,
                  phoneCard,
                  Sizes.s64.spaceY,
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
