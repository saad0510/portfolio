import '../core/extensions/text_ext.dart';

enum NavItems {
  home,
  about,
  service,
  blogs,
  contact,
  ;

  @override
  String toString() => name.camelCaseToString();
}
