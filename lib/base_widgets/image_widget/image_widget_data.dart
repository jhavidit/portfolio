import 'package:equatable/equatable.dart';

class BaseImageData extends Equatable {
  final String? png;
  final int? height;
  final int? width;
  final String? lottie;
  final bool? isCached;
  final double? aspectRatio;

  const BaseImageData({
    this.png,
    this.height,
    this.width,
    this.lottie,
    this.isCached,
    this.aspectRatio,
  });

  BaseImageData copyWith({
    String? png,
    int? height,
    int? width,
    String? lottie,
    bool? isCached,
    double? aspectRatio,
  }) =>
      BaseImageData(
        png: png ?? this.png,
        height: height ?? this.height,
        width: width ?? this.width,
        lottie: lottie ?? this.lottie,
        isCached: isCached ?? this.isCached,
        aspectRatio: aspectRatio ?? this.aspectRatio,
      );

  factory BaseImageData.fromMap(Map<String, dynamic> json) => BaseImageData(
    png: json['png'],
    height: json['height'],
    width: json['width'],
    lottie: json['lottie'],
    isCached: json['is_cached'] ?? false,
    aspectRatio: json['aspect_ratio'],
  );

  @override
  String toString() {
    return '{ png : ${png.toString()}, height : ${height.toString()}, width : ${width.toString()}, lottie : $lottie, isCached : ${isCached.toString()}, aspectRatio : ${aspectRatio.toString()}';
  }

  @override
  List<Object?> get props => [png, lottie, height, width, isCached,aspectRatio];
}