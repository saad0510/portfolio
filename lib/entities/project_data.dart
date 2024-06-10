import 'project_links.dart';
import 'project_type.dart';

class ProjectData {
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
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'explanation': explanation,
      'type': type,
      'links': links,
      'images': images,
    };
  }

  factory ProjectData.fromMap(dynamic data) {
    final map = Map.from(data ?? {});

    return ProjectData(
      id: map['id']?.toString() ?? '',
      title: map['title']?.toString() ?? '',
      description: map['description']?.toString() ?? '',
      explanation: map['explanation']?.toString() ?? '',
      type: ProjectType.fromMap(map['type']),
      links: ProjectLinks.fromMap(map['links'] ?? {}),
      images: List.from(map['images'] ?? '').map((e) => e.toString()).toList(),
    );
  }
}
