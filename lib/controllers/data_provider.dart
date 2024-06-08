import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../entities/education_data.dart';
import '../entities/review_data.dart';
import '../entities/services_data.dart';
import '../entities/skill_data.dart';
import '../entities/user_data.dart';

class DataProvider extends ChangeNotifier {
  static const dataUrl = '/assets/data/data.json';

  UserData user = const UserData.empty();
  List<SkillData> skills = [];
  List<EducationData> educations = [];
  List<ServicesData> services = [];
  List<ReviewData> reviews = [];

  DataProvider() {
    readData();
  }

  void readData() async {
    final jsonString = await rootBundle.loadString(dataUrl);
    final dataJson = Map.from(json.decode(jsonString) ?? {});

    final userData = dataJson['user'] ?? {};
    final skillsData = List.from(dataJson['skills'] ?? []);
    final educationData = List.from(dataJson['education'] ?? []);
    final servicesData = List.from(dataJson['services'] ?? []);
    final reviewsData = List.from(dataJson['reviews'] ?? []);

    user = UserData.fromMap(userData);
    skills = skillsData.map(SkillData.fromMap).toList();
    educations = educationData.map(EducationData.fromMap).toList();
    services = servicesData.map(ServicesData.fromMap).toList();

    reviews = reviewsData.map(ReviewData.fromMap).toList();
    notifyListeners();
  }
}
