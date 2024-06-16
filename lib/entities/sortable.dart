abstract class Sortable implements Comparable<Sortable> {
  final int sortOrder;

  const Sortable({
    required this.sortOrder,
  });

  @override
  int compareTo(Sortable other) {
    return sortOrder.compareTo(other.sortOrder);
  }
}
