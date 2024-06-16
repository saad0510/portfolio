import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/database/app_boxes.dart';
import '../entities/skill_data.dart';
import '../repositories/data_repo.dart';

final skillsProvider = FutureProvider<List<SkillData>>(
  (ref) async {
    ref.state = AsyncData(AppBoxes.skills.items);
    final data = await ref.read(dataRepoProvider).getSkills();
    AppBoxes.skills.setItems(data);
    return data;
  },
);
