import 'package:flutter/material.dart';
import 'package:motorotam/components/appbar_widget.dart';
import 'package:motorotam/components/properties_motor_card.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../components/motor_detail_widget.dart';

class MotorDetailPage extends StatelessWidget {

  const MotorDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEDE9),
      appBar: AppBarWidgets(),
      body: ListView(
        children: [
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: const [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: MotorDetailWidget(),
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
                const Expanded(
                  flex: 3,
                  child: Text(
                    "132,900 ₺",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text("4.8",
                          style: TextStyle(color: Colors.amber, fontSize: 18)),
                    ],
                  ),
                ),
                const Text("4260 Reviews",
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
                      renk: Color.fromRGBO(255, 81, 6, 1),
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
            children: const [
              PropertiesMotorCard(),
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
          motorOzellikleri(
              anahtar: 'Motor Tipi : ',
              deger: '1 silindirli, 4 zamanlı,benzinli'),
          motorOzellikleri(anahtar: 'Motor Hacmi: ', deger: '373 cc'),
          motorOzellikleri(anahtar: 'Güç: ', deger: '32 kW (44 hp)'),
          motorOzellikleri(anahtar: 'Şanzıman: ', deger: 'Sıralı, 6 vites'),
          motorOzellikleri(
              anahtar: 'ŞanzDebriyaj: ', deger: 'PASC kaydırmalı debriyaj'),
          motorOzellikleri(anahtar: 'Soğutma: ', deger: 'Sıvı soğutma'),
          motorOzellikleri(anahtar: 'Ateşleme Tertibatı: ', deger: 'Bosch EMS'),
          const Divider(
            indent: 14,
            endIndent: 14,
            height: 30,
            thickness: 5,
          ),
          ozellikBasliklari(baslik: 'Yürüyen Aksam'),
          yuruyenAksamOzellikleri(
              anahtar: 'Şasi: ',
              deger: 'Çelik borulardan ana boru şasi, toz kaplama'),
          yuruyenAksamOzellikleri(
              anahtar: 'Ön Amortisör: ', deger: 'WP APEX 43'),
          yuruyenAksamOzellikleri(
              anahtar: 'Arka Amortisör: ', deger: 'WP APEX Monoshock'),
          yuruyenAksamOzellikleri(
              anahtar: 'Ön Fren: ', deger: 'Dört pistonlu / Disk fren'),
          yuruyenAksamOzellikleri(
              anahtar: 'Arka Fren: ', deger: 'Tek pistonlu / Disk fren'),
          yuruyenAksamOzellikleri(
              anahtar: 'Fren Diskleri Çap Ön/Arka: ', deger: '320 mm / 230 mm'),
          yuruyenAksamOzellikleri(anahtar: 'Zincir: ', deger: '3520 X-Ring'),
          yuruyenAksamOzellikleri(
              anahtar: 'Ön Lastik Ebat: ', deger: '110/70 17'),
          yuruyenAksamOzellikleri(anahtar: 'Arka Lastik: ', deger: '150/60 17'),
          yuruyenAksamOzellikleri(
              anahtar: 'Yerden Yükseklik: ', deger: '175 mm'),
          yuruyenAksamOzellikleri(
              anahtar: 'Oturma Yüksekliği: ', deger: '830 mm'),
          yuruyenAksamOzellikleri(anahtar: 'Yakıt deposu: ', deger: '13.4 l'),
          yuruyenAksamOzellikleri(
              anahtar: 'Yakıtsız ağırlık yaklaşık: ', deger: '149 kg'),
          yuruyenAksamOzellikleri(
              anahtar: 'Ortalama Yakıt Tüketimi: ', deger: '3.46 l/100 km'),
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
              offset: Offset(1, 1),
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
