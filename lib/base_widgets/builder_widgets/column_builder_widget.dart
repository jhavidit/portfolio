import 'package:flutter/material.dart';
import 'package:portflio_flutter/portfolio.dart';

class ColumnBuilderWidget extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final VerticalDirection verticalDirection;
  final int? itemCount;

  const ColumnBuilderWidget({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.verticalDirection = VerticalDirection.down,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (itemCount == null || itemCount == 0)
        ? emptyContainer
        : Column(
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            verticalDirection: verticalDirection,
            crossAxisAlignment: crossAxisAlignment,
            children: List.generate(
                itemCount!, (index) => itemBuilder(context, index)).toList(),
          );
  }
}

