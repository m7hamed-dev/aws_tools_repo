class FontSizeModel {
  /// font sizes only like ( smal ,  )
  final double small;
  final double regular;
  final double medium;
  final double bold;
  final double black;
  final double extraBlack;

  FontSizeModel({
    this.small = 10.0,
    this.regular = 12.0,
    this.medium = 14.0,
    this.bold = 16.0,
    this.black = 18.0,
    this.extraBlack = 20.0,
  });

  FontSizeModel copyWith({
    double? small,
    double? regular,
    double? medium,
    double? bold,
    double? black,
    double? extraBlack,
  }) {
    return FontSizeModel(
      small: small ?? this.small,
      regular: regular ?? this.regular,
      medium: medium ?? this.medium,
      bold: bold ?? this.bold,
      black: black ?? this.black,
      extraBlack: extraBlack ?? this.extraBlack,
    );
  }
}
