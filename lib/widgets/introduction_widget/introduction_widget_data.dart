import 'package:portflio_flutter/portfolio.dart';

class UserProfileWidgetItemData {
  BaseImageData? logo;
  String? bgColor;
  String? hoverColor;
  String? navLink;

  UserProfileWidgetItemData({
    this.logo,
    this.bgColor,
    this.hoverColor,
    this.navLink,
  });

  UserProfileWidgetItemData copyWith({
    BaseImageData? logo,
    String? bgColor,
    String? hoverColor,
    String? navLink,
  }) =>
      UserProfileWidgetItemData(
        logo: logo ?? this.logo,
        bgColor: bgColor ?? this.bgColor,
        hoverColor: hoverColor ?? this.hoverColor,
        navLink: navLink ?? this.navLink,
      );

  factory UserProfileWidgetItemData.fromMap(Map<String, dynamic> json) =>
      UserProfileWidgetItemData(
        logo: json['logo'] == null ? null : BaseImageData.fromMap(json['logo']),
        bgColor: json['bgColor'],
        hoverColor: json['hoverColor'],
        navLink: json['navLink'],
      );

  @override
  String toString() {
    return '{ logo : ${logo.toString()}, bgColor : ${bgColor.toString()}, hoverColor : ${hoverColor.toString()}, navlink : ${navLink.toString()}, }';
  }
}
