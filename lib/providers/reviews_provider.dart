import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/database/app_boxes.dart';
import '../entities/review_data.dart';
import '../repositories/data_repo.dart';

final reviewsProvider = FutureProvider<List<ReviewData>>(
  (ref) async {
    ref.state = AsyncData(AppBoxes.reviews.items);
    final data = await ref.read(dataRepoProvider).getReviews();
    AppBoxes.reviews.setItems(data);
    return data;
  },
);
