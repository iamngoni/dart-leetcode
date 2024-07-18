class OrderedStream {
  OrderedStream(this.n)
      : assert(n <= 1000 && 1 <= n, 'Length can only be between 1 and 1000') {
    _items = List.filled(n + 1, null);
  }

  final int n;
  List<String?> _items = [];
  int _index = 1;

  List<String> insert(int idKey, String value) {
    _items[idKey] = value;

    final List<String> next = [];
    while (_index < _items.length && _items[_index] != null) {
      next.add(_items[_index++]!);
    }

    return next;
  }
}
