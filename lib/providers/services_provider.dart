import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entities/services_data.dart';
import '../repositories/data_repo.dart';

final servicesProvider = FutureProvider<List<ServicesData>>(
  (ref) {
    return ref.read(dataRepoProvider).getServices();
  },
);
