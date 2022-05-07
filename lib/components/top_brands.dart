import 'package:flutter/material.dart';

class TopBrands extends StatelessWidget {
  const TopBrands({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: 10.0, left: 20, right: 20, bottom: 0),
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(238, 237, 233, 1),
            ),
            child: const Text(
              'Top Brands',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Inter',
                  fontSize: 18,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 20),
          child: Container(
            width: 58,
            height: 22,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color:  Color.fromRGBO(29, 31, 32, 1),
            ),
            child: const Center(
              child: Text(
                'view all',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Inter',
                    fontSize: 12,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}