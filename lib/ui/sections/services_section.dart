import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "../../core/extensions/theme_ext.dart";
import "../../providers/current_user_provider.dart";
import "../../providers/services_provider.dart";
import "../../theme/sizes.dart";
import "../widgets/service_card.dart";
import 'base_section.dart';

class ServicesSection extends ConsumerWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);
    final services = ref.watch(servicesProvider).valueOrNull ?? const [];

    return BaseSection(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'My Services',
            textAlign: TextAlign.center,
            style: context.typography.headlineLarge,
          ),
          Sizes.s16.spaceY,
          SizedBox(
            width: 600,
            child: Center(
              child: Text(
                user.bio,
                textAlign: TextAlign.center,
              ),
            ),
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
                  key: ValueKey(service.id),
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
