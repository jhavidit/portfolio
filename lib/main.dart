import 'package:flutter/material.dart';
import 'package:portflio_flutter/portfolio.dart';
import 'package:portflio_flutter/widgets/skill_widget.dart';
import 'package:portflio_flutter/widgets/top_navigation_widget.dart';
import 'package:portflio_flutter/widgets/work_experience_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: HexColor('#171c28'),
        elevation: 2,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: HexColor('#171c28'),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Scrollable.ensureVisible(introductionKey.currentContext!,
                        duration: const Duration(milliseconds: 500));
                  },
                  child: const BaseImageWidget(
                      data: BaseImageData(
                    asset: 'signature.png',
                  )).padding(
                      data: PaddingData(left: 4, right: 0, bottom: 4, top: 10)),
                ),
                TopNavigationWidget(),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntroductionWidget(
                      key: introductionKey,
                    ),
                    SkillWidget(
                      key: skillKey,
                    ),
                    WorkExperienceWidget(
                      key: workExperienceKey,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
