import 'dart:convert';

import 'data_box.dart';

class IterableDataBox<T> extends DataBox {
  final String Function(T obj) toId;
  final Map<String, dynamic> Function(T obj) toMap;
  final T Function(dynamic map) fromMap;

  IterableDataBox(
    super.name, {
    required this.toId,
    required this.toMap,
    required this.fromMap,
  });

  List<T> get items {
    final values = prefs.getStringList(name) ?? [];
    return values.map(jsonDecode).map(fromMap).toList();
  }

  Future<void> setItems(Iterable<T> items) async {
    final data = items.map(toMap).map(jsonEncode).toList();
    await prefs.setStringList(name, data);
  }
}
