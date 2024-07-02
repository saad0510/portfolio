import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entities/education_data.dart';
import '../entities/project_data.dart';
import '../entities/review_data.dart';
import '../entities/services_data.dart';
import '../entities/skill_data.dart';
import '../entities/user_data.dart';
import '../entities/video_data.dart';

class DataRepo {
  const DataRepo();

  Future<UserData> getUser(String uid) async {
    return usersRef.doc(uid).get().then((x) => x.data()!);
  }

  Future<List<SkillData>> getSkills() async {
    final docs = await skillsRef.get().then((d) => d.docs);
    final data = docs.map((e) => e.data());
    return data.toList()..sort();
  }

  Future<List<EducationData>> getEducations() async {
    final docs = await educationsRef.get().then((d) => d.docs);
    final data = docs.map((e) => e.data());
    return data.toList()..sort();
  }

  Future<List<ServicesData>> getServices() async {
    final docs = await servicesRef.get().then((d) => d.docs);
    final data = docs.map((e) => e.data());
    return data.toList()..sort();
  }

  Future<List<ProjectData>> getProjects() async {
    final docs = await projectsRef.get().then((d) => d.docs);
    final data = docs.map((e) => e.data());
    return data.toList()..sort();
  }

  Future<List<ReviewData>> getReviews() async {
    final docs = await reviewsRef.get().then((d) => d.docs);
    final data = docs.map((e) => e.data());
    return data.toList()..sort();
  }

  Future<List<VideoData>> getVideos() async {
    final docs = await videosRef.get().then((d) => d.docs);
    final data = docs.map((e) => e.data());
    return data.toList()..sort();
  }

  Future<String> getAppVersion() async {
    final doc = await firestore.collection('settings').doc('versions').get();
    return doc.get('portfolio')?.toString() ?? '';
  }

  static final firestore = FirebaseFirestore.instance;

  static final usersRef = firestore
      .collection('users') //
      .withConverter(
        fromFirestore: (doc, _) => UserData.fromMap(doc.data()),
        toFirestore: (user, _) => user.toMap(),
      );

  static final skillsRef = firestore
      .collection('skills') //
      .withConverter(
        fromFirestore: (doc, _) => SkillData.fromMap(doc.data()),
        toFirestore: (skill, _) => skill.toMap(),
      );

  static final educationsRef = firestore
      .collection('educations') //
      .withConverter(
        fromFirestore: (doc, _) => EducationData.fromMap(doc.data()),
        toFirestore: (education, _) => education.toMap(),
      );

  static final servicesRef = firestore
      .collection('services') //
      .withConverter(
        fromFirestore: (doc, _) => ServicesData.fromMap(doc.data()),
        toFirestore: (service, _) => service.toMap(),
      );

  static final projectsRef = firestore
      .collection('projects') //
      .withConverter(
        fromFirestore: (doc, _) => ProjectData.fromMap(doc.data()),
        toFirestore: (project, _) => project.toMap(),
      );

  static final reviewsRef = firestore
      .collection('reviews') //
      .withConverter(
        fromFirestore: (doc, _) => ReviewData.fromMap(doc.data()),
        toFirestore: (review, _) => review.toMap(),
      );

  static final videosRef = firestore
      .collection('videos') //
      .withConverter(
        fromFirestore: (doc, _) => VideoData.fromMap(doc.data()),
        toFirestore: (video, _) => video.toMap(),
      );
}

final dataRepoProvider = Provider((ref) => const DataRepo());
