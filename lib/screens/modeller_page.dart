import 'package:flutter/material.dart';
import 'package:motorotam/components/appbar_widget.dart';
import 'package:motorotam/components/category_bar.dart';
import 'package:motorotam/components/motor_card.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_row_column.dart';

import 'motor_detail_page.dart';

class ModellerPageWidget extends StatelessWidget {
  const ModellerPageWidget({Key? key}) : super(key: key);

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
            const CategoryBar(),
            ResponsiveRowColumn(
              rowPadding: const EdgeInsets.all(0),
              layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Container(
                          width: ResponsiveValue(
                            context,
                            defaultValue: 55.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 55.0,
                              ),
                              Condition.largerThan(
                                name: TABLET,
                                value: 100.0,
                              ),
                              Condition.largerThan(
                                name: DESKTOP,
                                value: 250.0,
                              ),
                            ],
                          ).value,
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
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "Naked Modeller",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: ResponsiveValue(
                            context,
                            defaultValue: 130.0,
                            valueWhen: const [
                              Condition.smallerThan(
                                name: MOBILE,
                                value: 215.0,
                              ),
                              Condition.largerThan(
                                name: TABLET,
                                value: 400.0,
                              ),
                              Condition.largerThan(
                                name: DESKTOP,
                                value: 550.0,
                              ),
                            ],
                          ).value,
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ResponsiveRowColumn(
              rowPadding: const EdgeInsets.all(0),
              layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 2,
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
                  rowFlex: 2,
                  child: MotorCard(),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
