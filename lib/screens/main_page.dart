import 'package:flutter/material.dart';
import 'package:motorotam/components/appbar_widget.dart';
import 'package:motorotam/screens/motor_detail_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../components/category_bar.dart';
import '../components/motor_card.dart';
import '../components/top_brands.dart';
import '../components/yatay_list.dart';
import '../model/models.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFEEEDEF),
      appBar: AppBarWidgets(baslik: "MotoRotam",),
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
              columnPadding: const EdgeInsets.all(12),
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
                          builder: (context) =>  MotorDetailPage(
                          motorModel: ktm250.model,
                          motorFiyat: ktm250.fiyat.toString(),
                          motorYildiz: ktm250.yildiz,
                          motorHacim: ktm250.motorHacmi.toString(),
                            motorFren: ktm250.onFren,
                          motorPower: ktm250.motorPower.toString(),
                          motorHiz: ktm250.motorHiz,
                          motorTork: ktm250.motorTork,
                          motorTipi: ktm250.motorTipi,
                            motorSanziman: ktm250.sanziman,
                            motorDebriyaj: ktm250.debriyaj,
                            motorSogutma: ktm250.sogutma,
                            motorAtesleme: ktm250.atesleme,
                            motorSasi: ktm250.sasiTipi,
                            motorOnAmortisor: ktm250.onAmortisor,
                            motorArkaAmortisor: ktm250.arkaAmortisor,
                            motorOnFren: ktm250.onFren,
                            motorArkaFren: ktm250.arkaFren,
                            motorOnLastik: ktm250.onLastikCap,
                            motorArkaLastik: ktm250.arkaLastikCap,
                            motorYukseklik: ktm250.yukseklik,
                            motorYakitDeposu: ktm250.yakitDeposu,
                            motorOrtalamaYakit: ktm250.ortalamaYakit,
                            motorFrenDiskCap: ktm250.frenDiskCap,
                            motorZincir: ktm250.zincir,
                            motorAgirlik: ktm250.agirlik,
                            motorResim: ktm250.resim,
                            motorResimLeft: ktm250.resimLeft,
                            motorResimRight: ktm250.resimRight,
                          ),
                        ),
                      );
                    },
                    child: MotorCard(
                      baslik: ktm250.model,
                      fiyat: ktm250.fiyat.toString(),
                      resim: ktm250.resim,
                      yildiz: ktm250.yildiz,
                      yil: ktm250.yil,
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  MotorDetailPage(motorModel: ktm390.model,
                          motorFiyat: ktm390.fiyat.toString(),
                          motorYildiz: ktm390.yildiz,
                          motorHacim: ktm390.motorHacmi.toString(), motorFren: '',
                            motorPower: ktm390.motorPower.toString(),
                            motorHiz: ktm390.motorHiz,
                            motorTork: ktm390.motorTork,
                            motorTipi: ktm390.motorTipi,
                            motorSanziman: ktm390.sanziman,
                            motorDebriyaj: ktm390.debriyaj,
                            motorSogutma: ktm390.sogutma,
                            motorAtesleme: ktm390.atesleme,
                            motorSasi: ktm390.sasiTipi,
                            motorOnAmortisor: ktm390.onAmortisor,
                            motorArkaAmortisor: ktm390.arkaAmortisor,
                            motorOnFren: ktm390.onFren,
                            motorArkaFren: ktm390.arkaFren,
                            motorOnLastik: ktm390.onLastikCap,
                            motorArkaLastik: ktm390.arkaLastikCap,
                            motorYukseklik: ktm390.yukseklik,
                            motorYakitDeposu: ktm390.yakitDeposu,
                            motorOrtalamaYakit: ktm390.ortalamaYakit,
                            motorFrenDiskCap: ktm390.frenDiskCap,
                            motorZincir: ktm390.zincir,
                            motorAgirlik: ktm390.agirlik,
                            motorResim: ktm390.resim,
                            motorResimLeft: ktm390.resimLeft,
                            motorResimRight: ktm390.resimRight,
                          ),
                        ),
                      );
                    },
                    child: MotorCard(
                      baslik: ktm390.model,
                      fiyat: ktm390.fiyat.toString(),
                      resim: ktm390.resim,
                      yildiz: ktm390.yildiz,
                      yil: ktm390.yil,
                    ),
                  ),
                ),
              ],
            ),
            ResponsiveRowColumn(
              columnPadding: const EdgeInsets.all(12),
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
                          builder: (context) =>  MotorDetailPage(motorModel: ktm890.model,
                          motorFiyat: ktm890.fiyat.toString(),
                          motorYildiz: ktm890.yildiz,
                          motorHacim: ktm890.motorHacmi.toString(), motorFren: '',
                            motorPower: ktm890.motorPower.toString(),
                            motorHiz: ktm890.motorHiz,
                            motorTork: ktm890.motorTork,
                            motorTipi: ktm890.motorTipi,
                            motorSanziman: ktm890.sanziman,
                            motorDebriyaj: ktm890.debriyaj,
                            motorSogutma: ktm890.sogutma,
                            motorAtesleme: ktm890.atesleme,
                            motorSasi: ktm890.sasiTipi,
                            motorOnAmortisor: ktm890.onAmortisor,
                            motorArkaAmortisor: ktm890.arkaAmortisor,
                            motorOnFren: ktm890.onFren,
                            motorArkaFren: ktm890.arkaFren,
                            motorOnLastik: ktm890.onLastikCap,
                            motorArkaLastik: ktm890.arkaLastikCap,
                            motorYukseklik: ktm890.yukseklik,
                            motorYakitDeposu: ktm890.yakitDeposu,
                            motorOrtalamaYakit: ktm890.ortalamaYakit,
                            motorFrenDiskCap: ktm890.frenDiskCap,
                            motorZincir: ktm890.zincir,
                            motorAgirlik: ktm890.agirlik,
                            motorResim: ktm890.resim,
                            motorResimLeft: ktm890.resimLeft,
                            motorResimRight: ktm890.resimRight,
                          ),
                        ),
                      );
                    },
                    child: MotorCard(
                      baslik: ktm890.model,
                      fiyat: ktm890.fiyat.toString(),
                      resim: ktm890.resim,
                      yildiz: ktm890.yildiz,
                      yil: ktm890.yil,
                    ),
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
                          motorFiyat: '-?-',
                          motorYildiz: 1.5,
                          motorHacim: '**', motorFren: '',
                          motorPower: '??',
                          motorHiz: '???',
                          motorTork: '?',
                            motorTipi: '*?',
                            motorSanziman: '',
                            motorDebriyaj: '&&',
                            motorSogutma: '',
                            motorAtesleme: '++',
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
                    child:  MotorCard(
                      baslik: 'KTM 790',
                      fiyat: '123.0',
                      resim: ktm890.resim,
                      yildiz: 3.5,
                      yil: '2022',

                    ),
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
