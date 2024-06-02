extension TransformTextExt on String {
  String capitalize() {
    return this[0].toUpperCase() + substring(1);
  }

  String camelCaseToString() {
    final first = this[0].toUpperCase();

    String body = substring(1);
    body = body.splitMapJoin(
      RegExp(r'[A-Z]'),
      onMatch: (m) => ' ${m.group(0)}',
      onNonMatch: (n) => n,
    );

    return first + body.trim();
  }
}
