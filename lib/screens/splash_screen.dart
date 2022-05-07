import 'package:flutter/material.dart';

class IlkEkran extends StatelessWidget {
  const IlkEkran({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: // Figma Flutter Generator Googlepixel21Widget - FRAME
            Container(
                width: 411,
                height: 731,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(238, 237, 233, 1),
                ),
                child: Stack(children: <Widget>[
                  Positioned(
                    top: 100,
                    left: 127,
                    child: Container(
                      width: 166,
                      height: 161,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo.png'),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                  ),
                  const Positioned(
                      top: 300,
                      left: 138,
                      child: Text(
                        'MotoRotam',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Inter',
                            fontSize: 24,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  const Positioned(
                      top: 350,
                      left: 138,
                      child: Text(
                        'Mobil App Slogan',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5299999713897705),
                            fontFamily: 'Inter',
                            fontSize: 16,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  Positioned(
                      top: 431,
                      left: 44,
                      child: Container(
                          width: 323,
                          height: 300,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/logo_2.png'),
                                fit: BoxFit.fitWidth),
                          ))),
                ])));
  }
}
