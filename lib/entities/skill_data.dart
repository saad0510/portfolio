import '../core/extensions/json_ext.dart';
import 'sortable.dart';

class SkillData extends Sortable {
  final String id;
  final String title;
  final String description;

  const SkillData({
    required this.id,
    required this.title,
    required this.description,
    required super.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'sort_order': sortOrder,
    };
  }

  factory SkillData.fromMap(dynamic data) {
    final map = Map.from(data ?? {});

    return SkillData(
      id: map.decodeStr('id'),
      title: map.decodeStr('title'),
      description: map.decodeStr('description'),
      sortOrder: map.decodeInt('sort_order'),
    );
  }
}
