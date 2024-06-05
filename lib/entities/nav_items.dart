import '../core/extensions/text_ext.dart';

enum NavItems {
  home,
  about,
  services,
  projects,
  contact,
  ;

  @override
  String toString() => name.camelCaseToString();
}
