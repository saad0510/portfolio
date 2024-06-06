import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../core/extensions/theme_ext.dart';
import '../../theme/sizes.dart';
import '../widgets/service_card.dart';
import 'base_section.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseSection(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'My Services',
            textAlign: TextAlign.center,
            style: context.typography.displaySmall,
          ),
          Sizes.s16.spaceY,
          const Text(
            Constants.shortBio,
            textAlign: TextAlign.center,
          ),
          Sizes.s16.spaceY,
          Sizes.s24.spaceY,
          Wrap(
            spacing: Sizes.s24.value,
            runSpacing: Sizes.s24.value,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            children: const [
              ServiceCard(
                title: 'Multi-Platform Apps',
                subtitle: 'I create apps for android, iOS, websites & desktops',
                icon: Icons.devices_rounded,
                selected: true,
              ),
              ServiceCard(
                title: 'Bugs Fixing',
                subtitle: 'I fix bugs and unexpected problems in existing applications.',
                icon: Icons.pest_control_rounded,
              ),
              ServiceCard(
                title: 'Reskining',
                subtitle: 'I can reskin templates with your own logo and themes.',
                icon: Icons.app_shortcut_outlined,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
