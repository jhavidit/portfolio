import 'package:flutter/material.dart';
import 'package:portflio_flutter/portfolio.dart';

class WrapBuilderWidget extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final int? itemCount;

  const WrapBuilderWidget({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (itemCount == null || itemCount == 0)
        ? emptyContainer
        : Wrap(
            direction: Axis.horizontal,
            children: List.generate(
                itemCount!, (index) => itemBuilder(context, index)).toList(),
          );
  }
}
