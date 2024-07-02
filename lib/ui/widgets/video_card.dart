import 'package:flutter/material.dart';

import '../../entities/video_data.dart';
import '../../theme/sizes.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({
    super.key,
    required this.video,
  });

  final VideoData video;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Container(
        width: 400,
        height: 250,
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width - Sizes.s64.value,
        ),
        child: Material(
          elevation: 2,
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  child: Image.network(
                    video.image,
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft,
                    cacheWidth: 1000,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black87,
                          Colors.transparent,
                          Colors.transparent,
                        ],
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    padding: Sizes.s16.pad,
                    child: Text(
                      video.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
