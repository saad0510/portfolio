import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/database/app_boxes.dart';
import '../entities/education_data.dart';
import '../repositories/data_repo.dart';

final educationsProvider = FutureProvider<List<EducationData>>(
  (ref) async {
    ref.state = AsyncData(AppBoxes.educations.items);
    final data = await ref.read(dataRepoProvider).getEducations();
    AppBoxes.educations.setItems(data);
    return data;
  },
);
