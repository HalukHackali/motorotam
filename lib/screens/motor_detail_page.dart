
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
      appBar: AppBarWidget(),
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
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 1,
                              color: Colors.black26,
                              offset: Offset(1, 1),
                              blurRadius: 3,
                            )
                          ],
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: const Color.fromRGBO(255, 81, 6, 1),
                          shape: BoxShape.circle),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 1,
                              color: Colors.black26,
                              offset: Offset(1, 1),
                              blurRadius: 3,
                            )
                          ],
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: Colors.white,
                          shape: BoxShape.circle),
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

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(
                  Icons.workspaces_filled,
                  size: 18.0,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Motor",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Motor Tipi: 1 silindirli 4 zamanlı benzinli motor",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Motor Hacmi: 373 cc",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Güç: 32 kW (44 hp)",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Şanzıman: Sıralı, 6 vites)",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Debriyaj: PASC kaydırmalı debriyaj",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Soğutma: Sıvı soğutma",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Ateşleme Tertibatı: Bosch EMS",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const Divider(
            indent: 14,
            endIndent: 14,
            height: 30,
            thickness: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, right: 8, left: 8, bottom: 8),
            child: Row(
              children: const [
                Icon(
                  Icons.workspaces_filled,
                  size: 18.0,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "YÜRÜYEN AKSAM",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Şasi: Çelik borulardan ana boru şasi, toz kaplama",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Ön Amortisör: WP APEX 43",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Arka Amortisör: WP APEX Monoshock",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Ön Fren: Dört pistonlu / Disk fren",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Arka Fren: Tek pistonlu / Disk fren",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Fren Diskleri Çap Ön/Arka: 320 mm / 230 mm",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Zincir: 3520 X-Ring",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Ön Lastik Ebat: 110/70 17",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Arka Lastik: 150/60 17",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Yerden Yükseklik: 175 mm",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Oturma Yüksekliği: 830 mm",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Yakıt deposu: 13.4 l",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Yakıtsız ağırlık yaklaşık: 149 kg",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 40,),
            child: Row(
              children: const [
                Text(
                  "Ortalama Yakıt Tüketimi: 3.46 l/100 km",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
