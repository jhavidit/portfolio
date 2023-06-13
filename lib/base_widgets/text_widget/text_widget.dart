import 'package:flutter/material.dart';
import 'package:portflio_flutter/portfolio.dart';
import 'package:portflio_flutter/base_widgets/text_widget/text_widget_data.dart';

class BaseTextWidget extends StatelessWidget {
  const BaseTextWidget({Key? key, this.textData, this.align}) : super(key: key);
  final TextWidgetData? textData;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    if (textData == null) {
      return emptyContainer;
    }
    if (!(textData!.text.isNullOrEmpty())) {
      return Text(
        textData!.text.toString(),
        style: getIndTextStyle(textData!),
        textAlign: align ?? TextAlign.left,
      );
    }
    return emptyContainer;
  }
}