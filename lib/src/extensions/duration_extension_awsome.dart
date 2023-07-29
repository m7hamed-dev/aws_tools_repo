extension DurationExtensionAwsome on int {
  void delayed() async {
    await Future.delayed(Duration(milliseconds: this));
  }
}
