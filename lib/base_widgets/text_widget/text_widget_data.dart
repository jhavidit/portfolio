import 'package:equatable/equatable.dart';
import 'package:portflio_flutter/portfolio.dart';

class TextWidgetData extends Equatable {
  String? text;
  String? color;
  String? font;
  String? bgColor;

  TextWidgetData({
    this.text,
    this.color,
    this.font,
    this.bgColor,
  });

  TextWidgetData copyWith({
    String? text,
    String? color,
    String? font,
    String? bgColor,
  }) =>
      TextWidgetData(
        text: text ?? this.text,
        color: color ?? this.color,
        font: font ?? this.font,
        bgColor: bgColor ?? this.bgColor,
      );

  factory TextWidgetData.fromMap(Map<String, dynamic> json) =>
      TextWidgetData(
        text: json['text'],
        color: json['color'],
        font: json['font'],
        bgColor: json['bgColor'],
      );

  @override
  String toString() {
    return '{ text : ${text.toString()}, color : ${color.toString()}, font : ${font.toString()}, }';
  }

  @override
  List<Object?> get props => [text, color, font];
}

extension IndTextExtension on TextWidgetData? {
  bool isValidTextData() {
    if (this == null || this?.text?.isNullOrEmpty() == true) return false;
    return true;
  }
}
