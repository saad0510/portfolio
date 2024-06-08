class EducationData {
  final String degree;
  final String institute;
  final String score;

  const EducationData({
    required this.degree,
    required this.institute,
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return {
      'degree': degree,
      'institute': institute,
      'score': score,
    };
  }

  factory EducationData.fromMap(dynamic data) {
    final map = Map.from(data ?? {});

    return EducationData(
      degree: map['degree']?.toString() ?? '',
      institute: map['institute']?.toString() ?? '',
      score: map['score']?.toString() ?? '',
    );
  }
}
