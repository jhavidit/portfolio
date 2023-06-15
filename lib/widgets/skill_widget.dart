import 'package:flutter/material.dart';
import 'package:portflio_flutter/base_widgets/builder_widgets/wrap_builder_widget.dart';
import 'package:portflio_flutter/portfolio.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BaseTextWidget(
          textData:
              TextWidgetData(text: 'What I do', color: '#FFFFFF', font: 'splr'),
        ).padding(
          data: PaddingData(
            left: 0,
            right: 0,
            bottom: 12,
            top: 12,
          ),
        ),
        TechnologiesWidget(list: [
          TechnologiesWidgetData(
              logo: BaseImageData(
                  asset: 'android.png', width: 60, height: 60, opacity: 0.7)),
          TechnologiesWidgetData(
              logo: BaseImageData(
                  asset: 'flutter.png', width: 60, height: 60, opacity: 0.7)),
          TechnologiesWidgetData(
              logo: BaseImageData(
                  asset: 'kotlin.png', width: 60, height: 60, opacity: 0.7)),
          TechnologiesWidgetData(
              logo: BaseImageData(
                  asset: 'java.png', width: 60, height: 60, opacity: 0.7)),
          TechnologiesWidgetData(
              logo: BaseImageData(
                  asset: 'dart.png', width: 60, height: 60, opacity: 0.7)),
          TechnologiesWidgetData(
              logo: BaseImageData(
                  asset: 'firebase.png', width: 60, height: 60, opacity: 0.7)),
        ]),
        BaseTextWidget(
          textData: TextWidgetData(
              text:
                  '⚡ Experienced Android and Flutter developer proficient in Java, Kotlin, and Dart.\n\n⚡ Strong knowledge of Android SDK, including activities, fragments, and services.\n\n⚡ Expertise in building cross-platform applications using Flutter\'s UI toolkit with state managements tools like BLOC.\n\n⚡ Proficient in UI design, creating intuitive and visually appealing user interfaces.\n\n⚡ Ability to optimize app performance by implementing efficient algorithms and data structures.',
              font: 'H3HEADLINE',
              color: '#FFFFFF'),
        ).padding(data: PaddingData(left: 0, right: 0, bottom: 20, top: 20))
      ],
    ).padding(data: PaddingData(left: 30, right: 0, bottom: 0, top: 20));
  }
}

class TechnologiesWidget extends StatefulWidget {
  const TechnologiesWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<TechnologiesWidgetData> list;

  @override
  State<TechnologiesWidget> createState() => _TechnologiesWidgetState();
}

class _TechnologiesWidgetState extends State<TechnologiesWidget> {
  @override
  Widget build(BuildContext context) {
    return WrapBuilderWidget(
        itemBuilder: (context, index) {
          return InkWell(
            key: UniqueKey(),
            onTap: () {},
            onHover: (hover) {
              if (hover) {
                print('vidit hover ${index}');
                setState(() {
                  widget.list.elementAt(index).logo?.opacity = 1;
                });
              } else {
                print('vidit not hover ${index}');
                setState(() {
                  widget.list.elementAt(index).logo?.opacity = 0.7;
                });
              }
            },
            child: BaseImageWidget(
              data: widget.list.elementAt(index).logo,
            ).padding(
                data: PaddingData(left: 0, right: 20, bottom: 24, top: 24)),
          );
        },
        itemCount: widget.list.length);
  }
}

class TechnologiesWidgetData {
  BaseImageData? logo;

  TechnologiesWidgetData({this.logo});
}
