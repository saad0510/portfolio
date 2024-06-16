import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entities/project_data.dart';
import '../repositories/data_repo.dart';

final projectsProvider = FutureProvider<List<ProjectData>>(
  (ref) {
    return ref.read(dataRepoProvider).getProjects();
  },
);
