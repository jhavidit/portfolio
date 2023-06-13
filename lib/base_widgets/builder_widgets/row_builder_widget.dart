import 'package:flutter/material.dart';
import 'package:portflio_flutter/portfolio.dart';

class RowBuilderWidget extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final int? itemCount;

  const RowBuilderWidget({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (itemCount == null || itemCount == 0)
        ? emptyContainer
        : Row(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      children: List.generate(
          itemCount!, (index) => itemBuilder(context, index)).toList(),
    );
  }
}