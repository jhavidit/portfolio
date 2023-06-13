import 'package:portflio_flutter/portfolio.dart';

class PaddingData {
  int? left;
  int? right;
  int? top;
  int? bottom;

  PaddingData(
      {required this.left,
      required this.right,
      required this.bottom,
      required this.top});

  factory PaddingData.fromMap(Map<String, dynamic> json) {
    return PaddingData(
        left: json.getOrNull(key: "left") as int?,
        right: json.getOrNull(key: "right") as int?,
        top: json.getOrNull(key: "top") as int?,
        bottom: json.getOrNull(key: "bottom") as int?);
  }

  PaddingData copyWith({int? left, int? right, int? top, int? bottom}) =>
      PaddingData(
        left: left ?? this.left,
        right: right ?? this.right,
        top: right ?? this.top,
        bottom: right ?? this.bottom,
      );
}
