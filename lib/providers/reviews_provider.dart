import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entities/review_data.dart';
import '../repositories/data_repo.dart';

final reviewsProvider = FutureProvider<List<ReviewData>>(
  (ref) {
    return ref.read(dataRepoProvider).getReviews();
  },
);
