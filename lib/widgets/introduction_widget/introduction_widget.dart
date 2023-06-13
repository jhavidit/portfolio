import 'package:flutter/material.dart';
import 'package:portflio_flutter/base_widgets/builder_widgets/row_builder_widget.dart';
import 'package:portflio_flutter/portfolio.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseTextWidget(textData: TextWidgetData(
            text: 'Hi My Name is VIdit',
            color: '#FFFFFF',
            font: 'subtitle1'
        ),),
        UserProfilesWidget(list: [
          UserProfileWidgetItemData(
            logo: BaseImageData(

            )
          )
        ])
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
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(
                    HexColor(list
                        .elementAt(index)
                        .hoverColor)),
                elevation: MaterialStateProperty.all(2),
                backgroundColor: MaterialStateProperty.all(
                  HexColor(list
                      .elementAt(index)
                      .bgColor),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                    side: BorderSide(color: HexColor(BaseColors.transparent)),
                  ),
                ),
              ),
              child: BaseImageWidget(
                data: list
                    .elementAt(index)
                    .logo,
              ));
        },
        itemCount: list.length);
  }
}
