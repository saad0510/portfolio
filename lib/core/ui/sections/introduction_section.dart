import 'package:flutter/material.dart';

import '../../../theme/app_buttons_styles.dart';
import '../../../theme/sizes.dart';
import '../../extensions/theme_ext.dart';
import '../widgets/stats_card.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: Sizes.s120.pad,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Hi! I Am\n',
                        ),
                        TextSpan(
                          text: 'Saad',
                          style: TextStyle(color: context.colors.primary),
                        ),
                        const TextSpan(
                          text: ' Bin Khalid',
                        ),
                      ],
                    ),
                    style: context.typography.displaySmall,
                  ),
                  Sizes.s32.spaceY,
                  Text(
                    'I am a web designer creating visually stunning and user-friendly websites. My portfolio showcases my ability.',
                    style: context.typography.bodyLarge,
                  ),
                  Sizes.s32.spaceY,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Hire Me'),
                      ),
                      Sizes.s12.spaceX,
                      OutlinedButton(
                        style: AppButtonsStyles.secondaryOutlinedButton,
                        onPressed: () {},
                        child: const Text('Projects'),
                      ),
                    ],
                  ),
                  Sizes.s32.spaceY,
                  Padding(
                    padding: Sizes.s24.pad,
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 3,
                          child: StatsCard(
                            title: 'Years of Experience',
                            value: '03',
                          ),
                        ),
                        Sizes.s16.spaceX,
                        const Expanded(
                          flex: 2,
                          child: StatsCard(
                            title: 'Projects Done',
                            value: '30',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: Sizes.s24.pad,
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 3,
                          child: StatsCard(
                            title: 'Happy Customers',
                            value: '23',
                          ),
                        ),
                        Sizes.s16.spaceX,
                        const Expanded(
                          flex: 2,
                          child: StatsCard(
                            title: 'Award Wins',
                            value: '3',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
