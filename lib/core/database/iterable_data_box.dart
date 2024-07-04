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

  T? get(String id) {
    final values = this.items;
    final i = values.indexWhere((e) => id == toId(e));
    return i.isNegative ? null : values[i];
  }

  List<T> get items {
    final values = prefs.getStringList(name) ?? [];
    return values.map(jsonDecode).map(fromMap).toList();
  }

  Future<void> add(T newItem) async {
    final newItems = this.items.where((e) => toId(e) != toId(newItem)).toList()..add(newItem);
    final data = newItems.map(toMap).map(jsonEncode).toList();
    await prefs.setStringList(name, data);
  }

  Future<void> setItems(Iterable<T> items) async {
    final data = items.map(toMap).map(jsonEncode).toList();
    await prefs.setStringList(name, data);
  }
}
