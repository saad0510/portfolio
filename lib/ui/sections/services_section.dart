import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "../../controllers/data_provider.dart";
import "../../core/extensions/theme_ext.dart";
import "../../theme/sizes.dart";
import "../widgets/service_card.dart";
import 'base_section.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.watch<DataProvider>();
    final user = data.user;
    final services = data.services;

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
          Text(
            user.bio,
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
            children: List.generate(
              services.length,
              (i) {
                final service = services[i];

                return ServiceCard(
                  title: service.title,
                  subtitle: service.subtitle,
                  icon: service.icon,
                  selected: i == 0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
