import 'package:flutter/material.dart';
import 'package:portflio_flutter/portfolio.dart';

extension WidgetExtensions on Widget {
  /// this extension sets padding to a widget by wrapping it inside a Padding Widget
  Widget getPaddingWrappedWidget(
      {left = 0.0, right = 0.0, top = 0.0, bottom = 0.0}) {
    if (this == emptyContainer) return this;
    return Padding(
      padding: EdgeInsets.fromLTRB(
          left.toDouble(), top.toDouble(), right.toDouble(), bottom.toDouble()),
      child: this,
    );
  }

  Widget padding({PaddingData? data}) {
    if (data == null) return this;
    data.left = data.left ?? 0;
    data.right = data.right ?? 0;
    data.top = data.top ?? 0;
    data.bottom = data.bottom ?? 0;
    return Padding(
      padding: EdgeInsets.fromLTRB(data.left!.toDouble(), data.top!.toDouble(),
          data.right!.toDouble(), data.bottom!.toDouble()),
      child: this,
    );
  }

  /// this extension sets background color to a widget by wrapping it inside a Center Widget
  Widget setBackgroundColor({colors = "#FFFFFF"}) {
    return Container(
      color: HexColor(colors),
      child: this,
    );
  }

  Widget setCurveRadius({radius = 0.0}) {
    if (this is Container) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        child: this,
      );
    } else {
      return this;
    }
  }

  Widget setCurveRadiusAndBackground({radius = 0.0, color = "#FFFFFF"}) {
    return Container(
      decoration: BoxDecoration(
        color: HexColor(color),
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
      child: this,
    );
  }
}

const emptyContainer = SizedBox(
  height: 0,
  width: 0,
);

Alignment getAlignmentBasedOnValue(String? alignment) {
  if (alignment.isNullOrEmpty()) {
    return Alignment.center;
  } else if (alignment.isEquals("top-left", ignoreCase: true)) {
    return Alignment.topLeft;
  } else if (alignment.isEquals("top-center", ignoreCase: true)) {
    return Alignment.topCenter;
  } else if (alignment.isEquals("top-right", ignoreCase: true)) {
    return Alignment.topRight;
  } else if (alignment.isEquals("center-left", ignoreCase: true)) {
    return Alignment.centerLeft;
  } else if (alignment.isEquals("center", ignoreCase: true)) {
    return Alignment.center;
  } else if (alignment.isEquals("center-right", ignoreCase: true)) {
    return Alignment.centerRight;
  } else if (alignment.isEquals("bottom-left", ignoreCase: true)) {
    return Alignment.bottomLeft;
  } else if (alignment.isEquals("bottom-center", ignoreCase: true)) {
    return Alignment.bottomCenter;
  } else if (alignment.isEquals("bottom-right", ignoreCase: true)) {
    return Alignment.bottomRight;
  } else {
    return Alignment.center;
  }
}
