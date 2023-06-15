import 'package:equatable/equatable.dart';

class BaseImageData {
  String? png;
  String? asset;
  int? height;
  int? width;
  double? opacity;
  String? lottie;
  bool? isCached;
  double? aspectRatio;

  BaseImageData({
    this.png,
    this.asset,
    this.height,
    this.width,
    this.opacity,
    this.lottie,
    this.isCached,
    this.aspectRatio,
  });

  BaseImageData copyWith({
    String? png,
    String? asset,
    int? height,
    int? width,
    double? opacity,
    String? lottie,
    bool? isCached,
    double? aspectRatio,
  }) =>
      BaseImageData(
        png: png ?? this.png,
        asset: asset ?? this.asset,
        height: height ?? this.height,
        width: width ?? this.width,
        opacity: opacity ?? this.opacity,
        lottie: lottie ?? this.lottie,
        isCached: isCached ?? this.isCached,
        aspectRatio: aspectRatio ?? this.aspectRatio,
      );

  factory BaseImageData.fromMap(Map<String, dynamic> json) => BaseImageData(
        png: json['png'],
        height: json['height'],
        asset: json['asset'],
        width: json['width'],
        lottie: json['lottie'],
        isCached: json['is_cached'] ?? false,
        aspectRatio: json['aspect_ratio'],
      );

  @override
  String toString() {
    return '{ png : ${png.toString()}, height : ${height.toString()}, width : ${width.toString()}, lottie : $lottie, isCached : ${isCached.toString()}, aspectRatio : ${aspectRatio.toString()}';
  }
}
