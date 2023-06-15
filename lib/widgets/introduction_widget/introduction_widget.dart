import 'package:flutter/material.dart';
import 'package:portflio_flutter/base_widgets/builder_widgets/row_builder_widget.dart';
import 'package:portflio_flutter/portfolio.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SizedBox(
          width: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              BaseTextWidget(
                textData: TextWidgetData(
                    text: 'Hey Folks, I am Vidit',
                    color: '#FFFFFF',
                    font: 'SPLR'),
              ).padding(
                  data: PaddingData(left: 0, right: 0, bottom: 8, top: 8)),
              BaseTextWidget(
                textData: TextWidgetData(
                    text:
                        'A passionate Full Stack Software Developer 🚀 having an experience of building Web and Mobile applications with JavaScript / Reactjs / Nodejs / React Native and some other cool libraries and frameworks.A passionate Full Stack Software Developer 🚀 having an experience of building Web and Mobile applications with JavaScript / Reactjs / Nodejs / React Native and some other cool libraries and frameworks.',
                    color: '#FFFFFF',
                    font: 'h3headline'),
              ).padding(
                  data: PaddingData(left: 0, right: 0, bottom: 8, top: 8)),
              UserProfilesWidget(list: [
                UserProfileWidgetItemData(
                    logo: BaseImageData(
                      asset: 'assets/github.png',
                      width: 20,
                      height: 20,
                    ),
                    bgColor: '#FFFFFF',
                    navLink: 'https://github.com/jhavidit'),
                UserProfileWidgetItemData(
                    logo: BaseImageData(
                      asset: 'linkedin.png',
                      width: 20,
                      height: 20,
                    ),
                    bgColor: '#0e76a8',
                    navLink: 'https://linkedin.com/in/jhavidit'),
                UserProfileWidgetItemData(
                    logo: BaseImageData(
                      asset: 'twitter.png',
                      width: 20,
                      height: 20,
                    ),
                    bgColor: '#55acee',
                    navLink: 'https://twitter.com/viditjha28'),
                UserProfileWidgetItemData(
                    logo: BaseImageData(
                      asset: 'medium.png',
                      width: 20,
                      height: 20,
                    ),
                    bgColor: '#000000',
                    navLink: 'https://medium.com/@jhavidit'),
                UserProfileWidgetItemData(
                    logo: BaseImageData(
                      asset: 'leetcode.png',
                      width: 20,
                      height: 20,
                    ),
                    bgColor: '#fea116',
                    navLink: 'https://leetcode.com/jhavidit/')
              ]).padding(
                  data: PaddingData(left: 0, right: 0, bottom: 8, top: 8)),
              Wrap(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(2),
                      backgroundColor: MaterialStateProperty.all(
                        HexColor('#55198b'),
                      ),
                      shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                          side: BorderSide(
                              color: HexColor(BaseColors.transparent)),
                        ),
                      ),
                    ),
                    child: BaseTextWidget(
                      textData: TextWidgetData(
                          text: 'CONTACT ME',
                          color: '#FFFFFF',
                          font: 'subtitle2'),
                    ).padding(
                        data: PaddingData(
                            left: 8, right: 8, bottom: 8, top: 8)),
                  ).padding(
                      data:
                          PaddingData(left: 0, right: 12, bottom: 8, top: 8)),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(2),
                      backgroundColor: MaterialStateProperty.all(
                        HexColor('#55198b'),
                      ),
                      shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                          side: BorderSide(
                              color: HexColor(BaseColors.transparent)),
                        ),
                      ),
                    ),
                    child: BaseTextWidget(
                      textData: TextWidgetData(
                          text: 'DOWNLOAD RESUME',
                          color: '#FFFFFF',
                          font: 'subtitle2'),
                    ).padding(
                        data: PaddingData(
                            left: 8, right: 8, bottom: 8, top: 8)),
                  ).padding(
                      data: PaddingData(left: 0, right: 0, bottom: 8, top: 8))
                ],
              ).padding(
                  data: PaddingData(left: 0, right: 0, bottom: 8, top: 8))
            ],
          ).padding(
              data: PaddingData(left: 30, right: 20, bottom: 10, top: 0)),
        ),
        Column(
          children: [
            BaseImageWidget(
              data: BaseImageData(
                  lottie: 'introduction.json', width: 400, height: 360),
            ),
          ],
        )
      ],
    );
  }
}

class UserProfilesWidget extends StatelessWidget {
  const UserProfilesWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<UserProfileWidgetItemData> list;

  @override
  Widget build(BuildContext context) {
    return RowBuilderWidget(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        itemBuilder: (context, index) {
          return ElevatedButton(
            onPressed: () {
              _launchUrl(list.elementAt(index).navLink ?? '');
            },
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(4),
              backgroundColor: MaterialStateProperty.all(
                HexColor(list.elementAt(index).bgColor),
              ),
              padding: MaterialStateProperty.all(EdgeInsets.all(16)),
              shape: MaterialStateProperty.all<CircleBorder>(
                CircleBorder(
                  side: BorderSide(color: HexColor(BaseColors.transparent)),
                ),
              ),
            ),
            child: BaseImageWidget(
              data: list.elementAt(index).logo,
            )
          );
        },
        itemCount: list.length);
  }

  Future<void> _launchUrl(String navLink) async {
    Uri url = Uri.parse(navLink);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
