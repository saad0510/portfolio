class StatisticsData {
  final int experienceInYears;
  final int projectsDone;
  final int customerSatisfaction;
  final int awardsWon;

  const StatisticsData({
    required this.experienceInYears,
    required this.projectsDone,
    required this.customerSatisfaction,
    required this.awardsWon,
  });

  Map<String, dynamic> toMap() {
    return {
      'experience_in_yrs': experienceInYears,
      'projects_done': projectsDone,
      'customer_satisfaction_in_percent': customerSatisfaction,
      'awards': awardsWon,
    };
  }

  factory StatisticsData.fromMap(dynamic data) {
    final map = Map<String, dynamic>.from(data ?? {});

    return StatisticsData(
      experienceInYears: int.tryParse(map['experience_in_yrs']?.toString() ?? '') ?? 0,
      projectsDone: int.tryParse(map['projects_done']?.toString() ?? '') ?? 0,
      customerSatisfaction: int.tryParse(map['customer_satisfaction_in_percent']?.toString() ?? '') ?? 0,
      awardsWon: int.tryParse(map['awards']?.toString() ?? '') ?? 0,
    );
  }
}
