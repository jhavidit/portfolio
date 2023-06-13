import 'package:flutter/material.dart';
import 'package:portflio_flutter/base_widgets/text_widget/text_widget_data.dart';
import 'package:portflio_flutter/portfolio.dart';

TextStyle getIndTextStyle(TextWidgetData data) {
  TextStyle textStyle = TextStyle(
    fontFamily: IndTextFontStyle.subtitle2.style,
    fontWeight: IndTextFontStyle.subtitle2.fontWeight,
    fontSize: IndTextFontStyle.subtitle2.fontSize,
    color: HexColor(data.color),
  );
  if (!data.font.isNullOrEmpty()) {
    var font = data.font?.replaceAll(' ', '');
    switch (font?.toUpperCase()) {
      case "OVERLINE":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.overLine, data.color);
        break;
      case "OVERLINE2":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.overLine2, data.color);
        break;
      case "CAPTION":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.caption, data.color);
        break;
      case "BODY1":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.body1, data.color);
        break;
      case "BODY2":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.body2, data.color);
        break;
      case "SUBTITLE1":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.subtitle1, data.color);
        break;
      case "SUBTITLE2":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.subtitle2, data.color);
        break;
      case "H3HEADLINE":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.h3headline, data.color);
        break;
      case "H2HEADLINE":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.h2headline, data.color);
        break;
      case "H1HEADLINE":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.h1headline, data.color);
        break;
      case "BUTTON1":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.button1, data.color);
        break;
      case "BUTTON2":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.button2, data.color);
        break;
      case "SPLR":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.splR, data.color);
        break;
      case "SPL":
        textStyle = IndTextFontStyle.textStyle(IndTextFontStyle.spl, data.color);
    }
  }
  return textStyle;
}

enum IndTextFontStyle {
  overLine(style: "OVERLINE", fontFamily: "Basier400", fontWeight: FontWeight.normal, fontSize: 11.0),
  overLine2(style: "OVERLINE2", fontFamily: "Basier500", fontWeight: FontWeight.normal, fontSize: 11.0),
  caption(style: "CAPTION", fontFamily: "Basier400", fontWeight: FontWeight.normal, fontSize: 13.0),
  body1(style: "BODY1", fontFamily: "Basier400", fontWeight: FontWeight.normal, fontSize: 14.0),
  body2(style: "BODY2", fontFamily: "Basier400", fontWeight: FontWeight.normal, fontSize: 16.0),
  subtitle1(style: "SUBTITLE1", fontFamily: "Basier500", fontWeight: FontWeight.normal, fontSize: 14.0),
  subtitle2(style: "SUBTITLE2", fontFamily: "Basier500", fontWeight: FontWeight.normal, fontSize: 16.0),
  h3headline(style: "H3HEADLINE", fontFamily: "Basier500", fontWeight: FontWeight.normal, fontSize: 20.0),
  h2headline(style: "H2HEADLINE", fontFamily: "Basier500", fontWeight: FontWeight.normal, fontSize: 24.0),
  h1headline(style: "H1HEADLINE", fontFamily: "Basier600", fontWeight: FontWeight.normal, fontSize: 32.0),
  button1(style: "BUTTON1", fontFamily: "Basier500", fontWeight: FontWeight.normal, fontSize: 16.0),
  button2(style: "BUTTON2", fontFamily: "Basier500", fontWeight: FontWeight.normal, fontSize: 14.0),
  splR(style: "SPLR", fontFamily: "Basier400", fontWeight: FontWeight.normal, fontSize: 40.0),
  spl(style: "SPL", fontFamily: "Basier700", fontWeight: FontWeight.normal, fontSize: 40.0);

  static TextStyle textStyle(IndTextFontStyle style, String? color) {
    return TextStyle(
      fontFamily: style.fontFamily,
      fontWeight: style.fontWeight,
      fontSize: style.fontSize,
      color: HexColor(color),
    );
  }

  const IndTextFontStyle({
    required this.style,
    required this.fontFamily,
    required this.fontSize,
    required this.fontWeight,
  });

  final String style;
  final FontWeight fontWeight;
  final double fontSize;
  final String fontFamily;
}
