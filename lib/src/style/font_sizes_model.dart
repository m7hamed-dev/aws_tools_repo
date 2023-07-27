class FontSizeModel {
  /// font sizes only like ( smal ,  )
  const FontSizeModel({
    this.small = 10.0,
    this.regular = 12.0,
    this.medium = 14.0,
    this.bold = 16.0,
    this.black = 18.0,
    this.extraBlack = 20.0,
  });

  ///
  final double small;
  final double regular;
  final double medium;
  final double bold;
  final double black;
  final double extraBlack;
}
