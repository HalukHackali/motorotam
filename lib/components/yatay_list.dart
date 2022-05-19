import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class YatayListMarka extends StatelessWidget {
  const YatayListMarka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
     width: screenWidth,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
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
                      top: 0.0, left: 5, right: 0, bottom: 0),
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      children: <Widget>[
                        const Positioned(
                          top: 65,
                          left: 0,
                          child: Text(
                            'Yamaha',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/yamaha.png'),
                                  fit: BoxFit.fitWidth),
                            ),
                          ),
                        ),
                      ],
                    ),
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
