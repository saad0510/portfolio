enum AppImages {
  me('png'),
  mobile_development('png'),
  none(''),
  ;

  final String extension;

  const AppImages(this.extension);

  String get path => '/assets/images/$name.$extension';
}

// ignore_for_file: constant_identifier_names
