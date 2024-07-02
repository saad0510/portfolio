import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/extensions/theme_ext.dart';
import '../../providers/videos_provider.dart';
import '../../theme/sizes.dart';
import '../widgets/video_card.dart';
import 'base_section.dart';

class VideosSection extends ConsumerWidget {
  const VideosSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final videos = ref.watch(videosProvider).valueOrNull ?? const [];

    final videoCards = [
      for (final video in videos) ...[
        VideoCard(video: video),
        Sizes.s24.spaceX,
      ]
    ];

    if (videoCards.isNotEmpty) videoCards.removeLast();

    return BaseSection(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Videos',
            textAlign: TextAlign.center,
            style: context.typography.headlineLarge,
          ),
          Sizes.s16.spaceY,
          const Text(
            'Some online lectures delivered by me',
            textAlign: TextAlign.center,
          ),
          Sizes.s16.spaceY,
          Sizes.s24.spaceY,
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: videoCards,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
