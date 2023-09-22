extension EnhancePrint on String {
  /// ## Enhacment of print statement
  String get enhancePrint {
    const shape = '----------------------------';
    return '$shape \n $this \n $shape';
  }
}
