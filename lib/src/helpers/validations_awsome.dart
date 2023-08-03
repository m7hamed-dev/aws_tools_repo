class Validations {
  static bool isEmailValid(String email) {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }

  bool isEmpty(dynamic collection) {
    if (collection == null) return true;
    if (collection is String) return collection.isEmpty;
    if (collection is Iterable || collection is Map) return collection.isEmpty;
    return false;
  }
}
