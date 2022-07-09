import 'package:flutter/material.dart';
import 'package:motorotam/components/appbar_widget.dart';
import 'package:motorotam/components/properties_motor_card.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../components/motor_detail_widget.dart';

class MotorDetailPage extends StatelessWidget {
  String motorModel;
  String motorResim;
  String motorResimLeft;
  String motorResimRight;
  String motorFiyat;
  double motorYildiz;
  String motorHacim;
  String motorFren;
  String motorPower;
  String motorHiz;
  String motorTork;
  String motorTipi;
  String motorSanziman;
  String motorDebriyaj;
  String motorSogutma;
  String motorAtesleme;
  String motorSasi;
  String motorOnAmortisor;
  String motorArkaAmortisor;
  String motorOnFren;
  String motorFrenDiskCap;
  String motorArkaFren;
  String motorOnLastik;
  String motorArkaLastik;
  String motorYukseklik;
  String motorYakitDeposu;
  String motorOrtalamaYakit;
  String motorZincir;
  String motorAgirlik;

  MotorDetailPage({
    Key? key,
    required this.motorModel,
    required this.motorAtesleme,
    required this.motorResim,
    required this.motorResimLeft,
    required this.motorResimRight,
    required this.motorOnLastik,
    required this.motorFrenDiskCap,
    required this.motorArkaLastik,
    required this.motorYukseklik,
    required this.motorYakitDeposu,
    required this.motorOrtalamaYakit,
    required this.motorOnAmortisor,
    required this.motorArkaAmortisor,
    required this.motorOnFren,
    required this.motorArkaFren,
    required this.motorFiyat,
    required this.motorHacim,
    required this.motorFren,
    required this.motorPower,
    required this.motorHiz,
    required this.motorTork,
    required this.motorTipi,
    required this.motorSanziman,
    required this.motorDebriyaj,
    required this.motorSogutma,
    required this.motorSasi,
    required this.motorZincir,
    required this.motorAgirlik,
    required this.motorYildiz,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEDE9),
      appBar: AppBarWidgets(
        baslik: motorModel,
      ),
      body: ListView(
        children: [
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children:  [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: MotorDetailWidget(
                  motorResim: motorResim,
                  motorResimRight: motorResimRight,
                  motorResimLeft: motorResimLeft,),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            height: 40,
            color: const Color.fromRGBO(29, 31, 32, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    motorFiyat,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(motorYildiz.toString(),
                          style: TextStyle(color: Colors.amber, fontSize: 18)),
                    ],
                  ),
                ),
                const Text("4260 Reviews ",
                    style: TextStyle(color: Colors.white, fontSize: 14)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Temel Özellikler",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    motorRenkSecici(
                      renk: const Color.fromRGBO(255, 81, 6, 1),
                      border: Colors.black12,
                      shadowRenk: Colors.black26,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    motorRenkSecici(
                      renk: Colors.white,
                      border: Colors.black12,
                      shadowRenk: Colors.black26,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              PropertiesMotorCard(
                motorHacim: motorHacim,
                motorPower: motorPower,
                motorFren: motorFren,
                motorHiz: motorHiz,
                motorTork: motorTork,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 20),
            child: Text(
              "Ayrıntılı Özellikler",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          ozellikBasliklari(baslik: 'Motor'),
          motorOzellikleri(anahtar: 'Motor Tipi : ', deger: motorTipi),
          motorOzellikleri(anahtar: 'Motor Hacmi: ', deger: motorHacim),
          motorOzellikleri(anahtar: 'Güç: ', deger: motorPower),
          motorOzellikleri(anahtar: 'Şanzıman: ', deger: motorSanziman),
          motorOzellikleri(anahtar: 'Debriyaj: ', deger: motorDebriyaj),
          motorOzellikleri(anahtar: 'Soğutma: ', deger: motorSogutma),
          motorOzellikleri(
              anahtar: 'Ateşleme Tertibatı: ', deger: motorAtesleme),
          const Divider(
            indent: 14,
            endIndent: 14,
            height: 30,
            thickness: 5,
          ),
          ozellikBasliklari(baslik: 'Yürüyen Aksam'),
          yuruyenAksamOzellikleri(anahtar: 'Şasi: ', deger: motorSasi),
          yuruyenAksamOzellikleri(
              anahtar: 'Ön Amortisör: ', deger: motorOnAmortisor),
          yuruyenAksamOzellikleri(
              anahtar: 'Arka Amortisör: ', deger: motorArkaAmortisor),
          yuruyenAksamOzellikleri(anahtar: 'Ön Fren: ', deger: motorOnFren),
          yuruyenAksamOzellikleri(anahtar: 'Arka Fren: ', deger: motorArkaFren),
          yuruyenAksamOzellikleri(
              anahtar: 'Fren Diskleri Çap Ön/Arka: ', deger: motorFrenDiskCap),
          yuruyenAksamOzellikleri(anahtar: 'Zincir: ', deger: motorZincir),
          yuruyenAksamOzellikleri(
              anahtar: 'Ön Lastik Ebat: ', deger: motorOnLastik),
          yuruyenAksamOzellikleri(
              anahtar: 'Arka Lastik: ', deger: motorArkaLastik),
          yuruyenAksamOzellikleri(
              anahtar: 'Oturma Yüksekliği: ', deger: motorYukseklik + ' mm'),
          yuruyenAksamOzellikleri(
              anahtar: 'Yakıt deposu: ', deger: motorYakitDeposu + ' Litre'),
          yuruyenAksamOzellikleri(
              anahtar: 'Yakıtsız ağırlık yaklaşık: ',
              deger: motorAgirlik + ' kg'),
          yuruyenAksamOzellikleri(
              anahtar: 'Ortalama Yakıt Tüketimi: ', deger: motorOrtalamaYakit),
        ],
      ),
    );
  }

  Container motorRenkSecici(
      {required Color renk, required Color shadowRenk, required Color border}) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              color: shadowRenk,
              offset: const Offset(1, 1),
              blurRadius: 3,
            )
          ],
          border: Border.all(
            color: border,
          ),
          color: renk,
          shape: BoxShape.circle),
    );
  }

  Padding motorOzellikleri({required String anahtar, required String deger}) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        left: 40,
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              text: anahtar,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: deger,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding yuruyenAksamOzellikleri(
      {required String anahtar, required String deger}) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        left: 40,
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              text: anahtar,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: deger,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding ozellikBasliklari({required String baslik}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(
            Icons.workspaces_filled,
            size: 18.0,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            baslik,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
