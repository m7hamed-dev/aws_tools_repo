class FontSizeModel {
  ///
  const FontSizeModel({
    required this.small,
    required this.regular,
    required this.medium,
    required this.bold,
    required this.extraBlack,
  });

  ///
  final double small;
  final double regular;
  final double medium;
  final double bold;
  final double extraBlack;

  FontSizeModel copyWith({
    double? small,
    double? regular,
    double? medium,
    double? bold,
    double? extraBlack,
  }) {
    return FontSizeModel(
      small: small ?? this.small,
      regular: regular ?? this.regular,
      medium: medium ?? this.medium,
      bold: bold ?? this.bold,
      extraBlack: extraBlack ?? this.extraBlack,
    );
  }
}
