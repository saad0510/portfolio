import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/database/app_boxes.dart';
import '../entities/video_data.dart';
import '../repositories/data_repo.dart';

final videosProvider = FutureProvider<List<VideoData>>(
  (ref) async {
    ref.state = AsyncData(AppBoxes.videos.items);
    final data = await ref.read(dataRepoProvider).getVideos();
    AppBoxes.videos.setItems(data);
    return data;
  },
);
