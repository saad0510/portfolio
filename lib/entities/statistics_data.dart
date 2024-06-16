import '../core/extensions/json_ext.dart';

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
    final map = Map.from(data ?? {});

    return StatisticsData(
      experienceInYears: map.decodeInt('experience_in_yrs'),
      projectsDone: map.decodeInt('projects_done'),
      customerSatisfaction: map.decodeInt('customer_satisfaction_in_percent'),
      awardsWon: map.decodeInt('awards'),
    );
  }
}
