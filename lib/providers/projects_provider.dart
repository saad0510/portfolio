import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/database/app_boxes.dart';
import '../entities/project_data.dart';
import '../repositories/data_repo.dart';

final projectsProvider = FutureProvider<List<ProjectData>>(
  (ref) async {
    ref.state = AsyncData(AppBoxes.projects.items);
    final data = await ref.read(dataRepoProvider).getProjects();
    AppBoxes.projects.setItems(data);
    return data;
  },
);
