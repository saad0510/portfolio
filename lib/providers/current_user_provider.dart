import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entities/user_data.dart';
import '../repositories/data_repo.dart';

final currentUserFutureProvider = FutureProvider<UserData>(
  (ref) {
    return ref.read(dataRepoProvider).getUser('me');
  },
);

final currentUserProvider = Provider<UserData>(
  (ref) {
    return ref.watch(currentUserFutureProvider).valueOrNull ?? const UserData.empty();
  },
);
