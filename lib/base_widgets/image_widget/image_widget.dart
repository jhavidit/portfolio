import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portflio_flutter/portfolio.dart';

class BaseImageWidget extends StatelessWidget {
  final BaseImageData? data;
  final double horizontalOffset;
  final bool ignoreAspectRatio;

  const BaseImageWidget({
    Key? key,
    this.data,
    this.horizontalOffset = 0.0,
    this.ignoreAspectRatio = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (data == null || (data?.png == null && data?.lottie == null)) {
      return emptyContainer;
    }
    if (!(data!.png.isNullOrEmpty()) == true) {
      try {
        if ((data?.height != null && data?.width != null) ||
            data?.aspectRatio != null) {
          var aspectHeight = data?.height?.toDouble();
          var aspectWidth = data?.width?.toDouble();
          if (data?.aspectRatio != null && !ignoreAspectRatio) {
            var aspectRatio = data?.aspectRatio;
            aspectWidth = MediaQuery.of(context).size.width - horizontalOffset;
            aspectHeight = (aspectWidth / aspectRatio!);
          }
          return Image.network(
            key: ValueKey(
              data!.png.toString(),
            ),
            data!.png.toString(),
            height: aspectHeight,
            width: aspectWidth,
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return SizedBox(
                height: aspectHeight,
                width: aspectWidth,
              );
            },
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return SizedBox(
                height: aspectHeight,
                width: aspectWidth,
              );
            },
          );
        } else {
          return Image.network(
            key: ValueKey(
              data!.png.toString(),
            ),
            data!.png.toString(),
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return emptyContainer;
            },
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return emptyContainer;
            },
          );
        }
      } catch (e) {
        return emptyContainer;
      }
    } else if (!(data!.lottie.isNullOrEmpty()) == true) {
      try {
        if ((data?.height != null && data?.width != null) ||
            data?.aspectRatio != null) {
          var aspectHeight = data?.height?.toDouble();
          var aspectWidth = data?.width?.toDouble();
          if (data?.aspectRatio != null && !ignoreAspectRatio) {
            var aspectRatio = data?.aspectRatio;
            aspectWidth = MediaQuery.of(context).size.width - horizontalOffset;
            aspectHeight = (aspectWidth / aspectRatio!);
          }
          return Lottie.network(
            key: ValueKey(
              data!.lottie.toString(),
            ),
            data!.lottie.toString(),
            repeat: true,
            animate: true,
            height: aspectHeight,
            width: aspectWidth,
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return SizedBox(
                height: aspectHeight,
                width: aspectWidth,
              );
            },
          );
        } else {
          return Lottie.network(
            key: ValueKey(
              data!.lottie.toString(),
            ),
            data!.lottie.toString(),
            repeat: true,
            animate: true,
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return emptyContainer;
            },
          );
        }
      } catch (e) {
        return emptyContainer;
      }
    } else {
      return emptyContainer;
    }
  }
}
