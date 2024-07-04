import 'package:web/web.dart' show window;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../repositories/data_repo.dart';

final appVersionProvider = FutureProvider<String>(
  (ref) async {
    final prefs = await SharedPreferences.getInstance();

    final localVersion = prefs.getString('app_version');
    if (localVersion != null) ref.state = AsyncData(localVersion);

    final remoteVersion = await ref.read(dataRepoProvider).getAppVersion();
    await prefs.setString('app_version', remoteVersion);

    final shouldRefresh = localVersion != null && localVersion != remoteVersion;
    if (shouldRefresh) window.location.reload();

    return remoteVersion;
  },
);
