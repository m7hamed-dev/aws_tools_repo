/// # Enhacment of print statement
extension EnhancePrint on String {
  String get enhancePrint {
    const shape = '---------------------------- \n';
    return '$shape $this $shape';
  }
}
