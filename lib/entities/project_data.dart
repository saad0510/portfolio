import '../core/extensions/json_ext.dart';
import 'project_links.dart';
import 'project_type.dart';
import 'sortable.dart';

class ProjectData extends Sortable {
  final String id;
  final String title;
  final String description;
  final String explanation;
  final ProjectType type;
  final ProjectLinks links;
  final List<String> images;

  const ProjectData({
    required this.id,
    required this.title,
    required this.description,
    required this.explanation,
    required this.type,
    required this.links,
    required this.images,
    required super.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'explanation': explanation,
      'type': type.toMap(),
      'links': links.toMap(),
      'images': images,
      'sort_order': sortOrder,
    };
  }

  factory ProjectData.fromMap(dynamic data) {
    final map = Map.from(data ?? {});

    return ProjectData(
      id: map.decodeStr('id'),
      title: map.decodeStr('title'),
      description: map.decodeStr('description'),
      explanation: map.decodeStr('explanation'),
      type: ProjectType.fromMap(map['type']),
      links: ProjectLinks.fromMap(map['links']),
      images: map.decodeList('images').map((e) => e.toString()).toList(),
      sortOrder: map.decodeInt('sort_order'),
    );
  }
}
