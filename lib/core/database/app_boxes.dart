import '../../entities/education_data.dart';
import '../../entities/project_data.dart';
import '../../entities/review_data.dart';
import '../../entities/services_data.dart';
import '../../entities/skill_data.dart';
import '../../entities/user_data.dart';
import '../../entities/video_data.dart';
import 'iterable_data_box.dart';

class AppBoxes {
  const AppBoxes._();

  static final users = IterableDataBox(
    'users',
    toId: (o) => o.id,
    toMap: (o) => o.toMap(),
    fromMap: UserData.fromMap,
  );

  static final skills = IterableDataBox(
    'skills',
    toId: (o) => o.id,
    toMap: (o) => o.toMap(),
    fromMap: SkillData.fromMap,
  );

  static final educations = IterableDataBox(
    'educations',
    toId: (o) => o.id,
    toMap: (o) => o.toMap(),
    fromMap: EducationData.fromMap,
  );

  static final services = IterableDataBox(
    'services',
    toId: (o) => o.id,
    toMap: (o) => o.toMap(),
    fromMap: ServicesData.fromMap,
  );

  static final projects = IterableDataBox(
    'projects',
    toId: (o) => o.id,
    toMap: (o) => o.toMap(),
    fromMap: ProjectData.fromMap,
  );

  static final reviews = IterableDataBox(
    'reviews',
    toId: (o) => o.id,
    toMap: (o) => o.toMap(),
    fromMap: ReviewData.fromMap,
  );

  static final videos = IterableDataBox(
    'videos',
    toId: (o) => o.id,
    toMap: (o) => o.toMap(),
    fromMap: VideoData.fromMap,
  );

  static final boxes = [
    users,
    skills,
    educations,
    services,
    projects,
    reviews,
    videos,
  ];

  static Future<void> openBoxes() async {
    await Future.wait(boxes.map((e) => e.open()));
  }
}
