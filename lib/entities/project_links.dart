import '../core/extensions/json_ext.dart';

class ProjectLinks {
  final String github;
  final String website;
  final String playstore;
  final String applestore;
  final String apkDownload;

  const ProjectLinks({
    required this.github,
    required this.website,
    required this.playstore,
    required this.applestore,
    required this.apkDownload,
  });

  Map<String, dynamic> toMap() {
    return {
      'github': github,
      'website': website,
      'playstore': playstore,
      'applestore': applestore,
      'apk_download': apkDownload,
    };
  }

  factory ProjectLinks.fromMap(dynamic data) {
    final map = Map.from(data ?? {});

    return ProjectLinks(
      github: map.decodeStr('github'),
      website: map.decodeStr('website'),
      playstore: map.decodeStr('playstore'),
      applestore: map.decodeStr('applestore'),
      apkDownload: map.decodeStr('apk_download'),
    );
  }
}
