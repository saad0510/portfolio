import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/database/app_boxes.dart';
import '../entities/user_data.dart';
import '../repositories/data_repo.dart';

final currentUserFutureProvider = FutureProvider<UserData>(
  (ref) async {
    final users = AppBoxes.users.items;
    if (users.isNotEmpty) ref.state = AsyncData(users.first);

    final data = await ref.read(dataRepoProvider).getUser('me');
    AppBoxes.users.setItems([data]);
    return data;
  },
);

final currentUserProvider = Provider<UserData>(
  (ref) {
    return ref.watch(currentUserFutureProvider).valueOrNull ?? const UserData.empty();
  },
);
