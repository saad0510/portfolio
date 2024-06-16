extension DeSerializationExt on Map {
  String decodeStr(String key) {
    return this[key]?.toString() ?? '';
  }

  int decodeInt(String key) {
    return int.tryParse(decodeStr(key)) ?? 0;
  }

  double decodeDouble(String key) {
    return double.tryParse(decodeStr(key)) ?? 0;
  }

  List decodeList(String key) {
    return List.from(this[key] ?? []);
  }
}
