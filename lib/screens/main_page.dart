import 'package:flutter/material.dart';
import 'package:motorotam/screens/motor_detail_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../components/category_bar.dart';
import '../components/motor_card.dart';
import '../components/top_brands.dart';
import '../components/yatay_list.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFEEEDE9),
      appBar: AppBarWidget(),
      body: Align(
        alignment: Alignment.center,
        child: ListView(
          children: [
            const TopBrands(),
            const YatayListMarka(),
            ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Container(
                    width: screenWidth,
                    height: ResponsiveValue(
                      context,
                      defaultValue: 6.0,
                      valueWhen: const [
                        Condition.smallerThan(
                          name: MOBILE,
                          value: 6.0,
                        ),
                        Condition.largerThan(
                          name: TABLET,
                          value: 12.0,
                        ),
                        Condition.largerThan(
                          name: DESKTOP,
                          value: 16.0,
                        ),
                      ],
                    ).value,
                    color: const Color.fromRGBO(29, 31, 32, 1),
                  ),
                ),
              ],
            ),
            const CategoryBar(),
            ResponsiveRowColumn(
              rowPadding: const EdgeInsets.all(0),
              layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MotorDetailPage(),
                        ),
                      );
                    },
                    child: const MotorCard(),
                  ),
                ),
                const ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child:  MotorCard(),
                ),
              ],
            ),
            ResponsiveRowColumn(
              rowMainAxisAlignment: MainAxisAlignment.center,
              rowPadding: const EdgeInsets.all(0),
              columnPadding: const EdgeInsets.all(0),
              layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              children: const [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: MotorCard(),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: MotorCard(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar AppBarWidget() {
    return AppBar(
      backgroundColor: const Color.fromRGBO(29, 31, 32, 1),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: const Text("MotoRotam"),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite_border),
          tooltip: 'Favoriler',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          tooltip: 'Ayarlar',
          onPressed: () {},
        ),
      ],
    );
  }
}
