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
      github: map['github']?.toString() ?? '',
      website: map['website']?.toString() ?? '',
      playstore: map['playstore']?.toString() ?? '',
      applestore: map['applestore']?.toString() ?? '',
      apkDownload: map['apk_download']?.toString() ?? '',
    );
  }
}
