import 'package:flutter/material.dart';
import 'package:portflio_flutter/portfolio.dart';

class TopNavigationWidget extends StatefulWidget {
  const TopNavigationWidget({Key? key}) : super(key: key);

  @override
  State<TopNavigationWidget> createState() => _TopNavigationWidgetState();
}

class _TopNavigationWidgetState extends State<TopNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(skillKey.currentContext!,
              duration: const Duration(milliseconds: 500));
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(HexColor('#55198b')),
              elevation: MaterialStateProperty.all(2),
              backgroundColor: MaterialStateProperty.all(
                HexColor('#171c28'),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: BorderSide(color: HexColor(BaseColors.transparent)),
                ),
              ),
            ),
            onHover: (isHover) {},
            child: BaseTextWidget(
              textData: TextWidgetData(
                  text: 'Skills', color: '#FFFFFF', font: 'H3Headline'),
            ).padding(data: PaddingData(left: 4, right: 4, bottom: 4, top: 4))),
        ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(workExperienceKey.currentContext!,
              duration: const Duration(milliseconds: 500));
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(HexColor('#55198b')),
              elevation: MaterialStateProperty.all(2),
              backgroundColor: MaterialStateProperty.all(
                HexColor('#171c28'),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: BorderSide(color: HexColor(BaseColors.transparent)),
                ),
              ),
            ),
            onHover: (isHover) {},
            child: BaseTextWidget(
              textData: TextWidgetData(
                  text: 'Work Experience',
                  color: '#FFFFFF',
                  font: 'H3Headline'),
            ).padding(data: PaddingData(left: 4, right: 4, bottom: 4, top: 4))),
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(HexColor('#55198b')),
              elevation: MaterialStateProperty.all(2),
              backgroundColor: MaterialStateProperty.all(
                HexColor('#171c28'),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: BorderSide(color: HexColor(BaseColors.transparent)),
                ),
              ),
            ),
            onHover: (isHover) {},
            child: BaseTextWidget(
              textData: TextWidgetData(
                  text: 'Project', color: '#FFFFFF', font: 'H3Headline'),
            ).padding(data: PaddingData(left: 4, right: 4, bottom: 4, top: 4))),
      ],
    ).padding(data: PaddingData(left: 10, right: 10, bottom: 10, top: 10));
  }
}
