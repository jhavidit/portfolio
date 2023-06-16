import 'package:flutter/material.dart';
import 'package:flutter_timeline/event_item.dart';
import 'package:flutter_timeline/timeline.dart';
import 'package:flutter_timeline/timeline_theme.dart';
import 'package:flutter_timeline/timeline_theme_data.dart';
import 'package:portflio_flutter/portfolio.dart';

class WorkExperienceWidget extends StatelessWidget {
  const WorkExperienceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BaseTextWidget(
          textData: TextWidgetData(
            text: 'Experience and Education',
            color: '#FFFFFF',
            font: 'splr'
          ),
        ).padding(data: PaddingData(left: 0, right: 0, bottom: 12, top: 12)),
        TimelineTheme(
            data: TimelineThemeData(lineColor: HexColor('#FFFFFF')),
            child: Timeline(
              indicatorSize: 24,
              events: [
                TimelineEventDisplay(
                    child: TimelineEventCard(
                        title: BaseTextWidget(
                          textData: TextWidgetData(
                            text: 'Indmoney',
                            font: 'h2headline',
                            color: '#FFFFFF',
                          ),
                        ),
                        content: BaseTextWidget(
                          textData: TextWidgetData(
                            text: 'SDE Intern Mobile | Oct 2022 - June 2023',
                            font: 'subtitle2',
                            color: '#FFFFFF',
                          ),
                        ),
                    ),
                    indicator: CircleAvatar(
                      backgroundColor: HexColor('#55198b'),
                    )),
                TimelineEventDisplay(
                    child: TimelineEventCard(
                      title: BaseTextWidget(
                        textData: TextWidgetData(
                          text: 'Indmoney',
                          font: 'h2headline',
                          color: '#FFFFFF',
                        ),
                      ),
                      content: BaseTextWidget(
                        textData: TextWidgetData(
                          text: 'SDE Intern Mobile | Oct 2022 - June 2023',
                          font: 'subtitle2',
                          color: '#FFFFFF',
                        ),
                      ),
                    ),
                    indicator: CircleAvatar(
                      backgroundColor: HexColor('#55198b'),
                    ))            ],
            )),
      ],
    ).padding(data: PaddingData(left: 30, right: 20, bottom: 12, top: 12));
  }
}
