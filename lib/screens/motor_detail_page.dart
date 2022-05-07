import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:motorotam/components/properties_motor_card.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../components/motor_detail_widget.dart';

class MotorDetailPage extends StatelessWidget {
  const MotorDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEDE9),
      appBar: AppBar(
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
        title: const Text("KTM 390 Duke"),
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
      ),
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
                  "Genel",
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
                  "Version: Standart",
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
                  "2022 Fiyat: 132,900 ₺",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
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
                  "Silindir Sayısı: Tek Silindir",
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
                  "Motor Hacmi: 249 cc",
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
                  "Soğutma: Su ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
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
                  "Fren",
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
                  "Ön/Arka: Disk/Abs - Disk/Abs (Bybre)",
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
