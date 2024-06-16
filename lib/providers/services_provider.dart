import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/database/app_boxes.dart';
import '../entities/services_data.dart';
import '../repositories/data_repo.dart';

final servicesProvider = FutureProvider<List<ServicesData>>(
  (ref) async {
    ref.state = AsyncData(AppBoxes.services.items);
    final data = await ref.read(dataRepoProvider).getServices();
    AppBoxes.services.setItems(data);
    return data;
  },
);
