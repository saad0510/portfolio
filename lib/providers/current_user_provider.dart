import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/database/app_boxes.dart';
import '../entities/user_data.dart';
import '../repositories/data_repo.dart';

final userProvider = FutureProvider.family<UserData, String>(
  (ref, userId) async {
    final localUser = AppBoxes.users.get(userId);
    if (localUser != null) ref.state = AsyncData(localUser);

    final data = await ref.read(dataRepoProvider).getUser(userId);
    AppBoxes.users.add(data);
    return data;
  },
);

final currentUserProvider = Provider<UserData>(
  (ref) {
    final user = ref.watch(userProvider('saad')).valueOrNull;
    return user ?? const UserData.empty();
  },
);
