import 'package:flutter/material.dart';

import '../entities/project_data.dart';

class EntitesProvider extends ChangeNotifier {
  ProjectData? selectedProject;

  void selectProject(ProjectData project) {
    selectedProject = project;
    notifyListeners();
  }
}
