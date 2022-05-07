import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MotorCard extends StatelessWidget {
  const MotorCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: screenWidth,
        child: Card(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color.fromRGBO(29, 31, 32, 1),
              width: 6.0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: const Color.fromRGBO(29, 31, 32, 1),
          clipBehavior: Clip.antiAlias,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/390_Duke.jpg", ),
                ListTile(
                  title: const Text(
                    'KTM Duke 390',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  subtitle: Text(
                    '2022',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6), fontSize: 18),
                  ),
                ),
                ListTile(
                  leading: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 24.0,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 0.1),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      if (kDebugMode) {
                        print(rating);
                      }
                    },
                  ),
                  trailing: Text(
                    '132,900 ₺',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6), fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
