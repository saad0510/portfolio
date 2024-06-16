import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entities/education_data.dart';
import '../repositories/data_repo.dart';

final educationsProvider = FutureProvider<List<EducationData>>(
  (ref) {
    return ref.read(dataRepoProvider).getEducations();
  },
);
