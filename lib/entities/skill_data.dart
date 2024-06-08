class SkillData {
  final String title;
  final String description;

  const SkillData({
    required this.title,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
    };
  }

  factory SkillData.fromMap(dynamic data) {
    final map = Map.from(data ?? {});

    return SkillData(
      title: map['title']?.toString() ?? '',
      description: map['description']?.toString() ?? '',
    );
  }
}
