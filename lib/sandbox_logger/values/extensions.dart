part of '../sand_custom_logs.dart';

extension StringExtension on String {
  List<String> splitByLength(int length) {
    List<String> pieces = [];

    for (int i = 0; i < this.length; i += length) {
      int offset = i + length;
      pieces.add(substring(i, offset >= this.length ? this.length : offset));
    }
    return pieces;
  }
}

typedef Mapper<T> = T Function(T value, bool isFirst, bool isLast, int index);

extension ListUtils<T> on List<T> {
  List<T> mapper(Mapper<T> toElement) {
    return asMap().entries.map((entry) {
      final index = entry.key;
      final value = entry.value;
      final isLast = (index + 1) == length;
      final isFirst = index == 0;
      return toElement(value, isFirst, isLast, index);
    }).toList();
  }
}

extension ListStringExtension on List<String?> {
  List<String> get removeEmpty =>
      removeNull.where((element) => element.isNotNull).toList();

  List<String> get trim {
    if (length <= 0) return [];
    final first = this.first;
    final listWithoutFirst = this;
    listWithoutFirst.removeAt(0);
    return [
      if (first != null && first.isNotEmpty) first,
      ...listWithoutFirst.removeEmpty,
    ];
  }
}

extension ListLessBoilerPlateExtension<T> on List<T?> {
  bool get hasANotNullElement => any((element) => element != null);
  List<T> get removeNull => whereType<T>().toList();
}

extension ObjectLessBoilerPlateExtension on Object? {
  bool get isNull => this == null;
  bool get isNotNull => this != null;
}
