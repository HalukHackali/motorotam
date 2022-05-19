import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:motorotam/screens/modeller_page.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  if (kDebugMode) {
                    print("tıklandı");
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 0.0, left: 5, right: 5, bottom: 0),
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ModellerPageWidget(),
                                ),
                              );
                            },
                            child: Container(
                              width: 90,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.9),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: const Offset(0.1, 4),
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: RotatedBox(
                                  quarterTurns: 4,
                                  child: Text(
                                    'Racing',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 3,
                            color: Colors.black,
                          ),
                          Container(
                            width: 90,
                            height: 40,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.9),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0.1, 4),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: RotatedBox(
                                quarterTurns: 4,
                                child: Text(
                                  'Enduro',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 18,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 3,
                            color: Colors.black,
                          ),
                          Container(
                            width: 90,
                            height: 40,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.9),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0.1, 4),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: RotatedBox(
                                quarterTurns: 4,
                                child: Text(
                                  'Naked',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 18,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 3,
                            color: Colors.black,
                          ),
                          Container(
                            width: 90,
                            height: 40,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.9),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0.1, 4),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: RotatedBox(
                                quarterTurns: 4,
                                child: Text(
                                  'Scooter',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 18,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 3,
                            color: Colors.black,
                          ),
                          Container(
                            width: 90,
                            height: 40,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.9),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0.1, 4),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: RotatedBox(
                                quarterTurns: 4,
                                child: Text(
                                  'Cros',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 18,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 3,
                            color: Colors.black,
                          ),
                          Container(
                            width: 90,
                            height: 40,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.9),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0.1, 4),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: RotatedBox(
                                quarterTurns: 4,
                                child: Text(
                                  'Touring',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 18,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 3,
                            color: Colors.black,
                          ),
                          Container(
                            width: 90,
                            height: 40,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.9),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0.1, 4),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: RotatedBox(
                                quarterTurns: 4,
                                child: Text(
                                  'Cruisers',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 18,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 3,
                            color: Colors.black,
                          ),
                          Container(
                            width: 90,
                            height: 40,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.9),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0.1, 4),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: RotatedBox(
                                quarterTurns: 4,
                                child: Text(
                                  'Electric',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 18,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 3,
                            color: Colors.black,
                          ),
                          Container(
                            width: 90,
                            height: 40,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.9),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0.1, 4),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: RotatedBox(
                                quarterTurns: 4,
                                child: Text(
                                  'Scrambler',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 18,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 3,
                            color: Colors.black,
                          ),
                          Container(
                            width: 90,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.9),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0.1, 4),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: RotatedBox(
                                quarterTurns: 4,
                                child: Text(
                                  'All ...',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 18,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ],
                  ),

                ),
              ),
            ],
          );
        },
      ),
    );
  }
}