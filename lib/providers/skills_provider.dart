import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entities/skill_data.dart';
import '../repositories/data_repo.dart';

final skillsProvider = FutureProvider<List<SkillData>>(
  (ref) {
    return ref.read(dataRepoProvider).getSkills();
  },
);
