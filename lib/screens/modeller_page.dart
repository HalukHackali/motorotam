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
      appBar: AppBarWidgets(baslik: "Modeller",),
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
                                value: 400.0,
                              ),
                              Condition.largerThan(
                                name: TABLET,
                                value: 500.0,
                              ),
                              Condition.largerThan(
                                name: DESKTOP,
                                value: 1200.0,
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
              rowPadding: EdgeInsets.all(0),
              layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)
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
                          builder: (context) =>  MotorDetailPage(motorModel: '',
                            motorFiyat: '', motorYildiz: 3.5,
                            motorHacim: '', motorFren: '',
                            motorPower: '',
                            motorHiz: '',
                            motorTork: '',
                            motorTipi: '',
                            motorSanziman: '',
                            motorDebriyaj: '',
                            motorSogutma: '',
                            motorAtesleme: '',
                            motorSasi: '',
                            motorOnAmortisor: '',
                            motorArkaAmortisor: '',
                            motorOnFren: '',
                            motorArkaFren: '',
                            motorOnLastik: '',
                            motorArkaLastik: '',
                            motorYukseklik: '',
                            motorYakitDeposu: '',
                            motorOrtalamaYakit: '',
                            motorFrenDiskCap: '',
                            motorZincir: '',
                            motorAgirlik: '',
                            motorResim: '',
                            motorResimLeft: '',
                            motorResimRight: '',

                          ),
                        ),
                      );
                    },
                    child:   MotorCard(baslik: 'KTM 250', fiyat: '123.0', resim: "assets/images/390_Duke.jpg", yildiz: 3, yil: '2022',),
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  MotorDetailPage(motorModel: '',
                          motorFiyat: '',
                          motorYildiz: 2.0,
                          motorHacim: '',
                            motorFren: '',
                            motorPower: '',
                          motorHiz: '',
                            motorTork: '',
                            motorTipi: '',
                            motorSanziman: '',
                            motorDebriyaj: '',
                            motorSogutma: '',
                            motorAtesleme: '',
                            motorSasi: '',
                            motorOnAmortisor: '',
                            motorArkaAmortisor: '',
                            motorOnFren: '',
                            motorArkaFren: '',
                            motorOnLastik: '',
                            motorArkaLastik: '',
                            motorYukseklik: '',
                            motorYakitDeposu: '',
                            motorOrtalamaYakit: '',
                            motorFrenDiskCap: '',
                            motorZincir: '',
                            motorAgirlik: '',
                            motorResim: '',
                            motorResimLeft: '',
                            motorResimRight: '' ,

                          ),
                        ),
                      );
                    },
                    child:  MotorCard(baslik: 'KTM 390', fiyat: '123.0', resim: "assets/images/390_Duke.jpg", yildiz: 2, yil: '2022', ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
