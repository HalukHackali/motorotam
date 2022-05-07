import 'package:flutter/material.dart';

class MotorDetailWidget extends StatelessWidget {
  const MotorDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        //clipBehavior: Clip.none, fit: StackFit.expand,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: <Widget>[
          Image.asset("assets/images/390_Duke.jpg"),//Container
          Positioned(
            top: 20,
            right: 10,
            child: SizedBox(
              child: Image.asset("assets/images/390_Duke_3.jpg"),
              width: 70,
            ),
          ),
          Positioned(
            top: 65,
            right: 10,
            child: SizedBox(
              child: Image.asset("assets/images/390_Duke_2.jpg"),
              width: 70,
            ),
          ), //Container
        ], //<Widget>[]
      ),
    );
  }
}

/*
Image.asset("assets/images/390_Duke.jpg")),
Image.asset("assets/images/390_Duke.jpg", width: 50,),
Image.asset("assets/images/390_Duke.jpg", width: 50,),
*/