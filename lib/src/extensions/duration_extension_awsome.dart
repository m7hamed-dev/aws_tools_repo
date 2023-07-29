extension DurationExtensionAwsome on int {
  Future<void> delayed() async {
    await Future.delayed(Duration(milliseconds: this));
  }
}
