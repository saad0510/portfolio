import '../core/extensions/json_ext.dart';
import 'sortable.dart';

class EducationData extends Sortable {
  final String id;
  final String degree;
  final String institute;
  final String score;

  const EducationData({
    required this.id,
    required this.degree,
    required this.institute,
    required this.score,
    required super.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'degree': degree,
      'institute': institute,
      'score': score,
      'sort_order': score,
    };
  }

  factory EducationData.fromMap(dynamic data) {
    final map = decodeMap(data);

    return EducationData(
      id: map.decodeStr('id'),
      degree: map.decodeStr('degree'),
      institute: map.decodeStr('institute'),
      score: map.decodeStr('score'),
      sortOrder: map.decodeInt('sort_order'),
    );
  }
}
