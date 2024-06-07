enum AppIcons {
  logo,
  phone,
  send,
  home,
  github,
  linkedin,
  none,
  ;

  String get path => 'icons/$name.svg';

  String get fullPath => 'assets/icons/$name.svg';
}
