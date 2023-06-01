import 'type_utils.dart';

extension ListUtils<T> on List<T> {
  void addIfPossible(T? value) {
    final bool isListNullable = TypeUtils.isNullable<T>();
    final bool canAddValue = isListNullable || value != null;

    if (canAddValue) add(value as T);
  }
}
