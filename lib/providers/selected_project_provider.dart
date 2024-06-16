import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entities/project_data.dart';

final selectedProjectProvider = StateProvider<ProjectData?>((ref) => null);
