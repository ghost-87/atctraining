import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:mytrainingapp/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 10.0),
      child: Container(
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(appPadding / 8),
                  child: Container(
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(appPadding / 20),
                      child: Container(
                        decoration: new BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.01,
                ),
                Text(
                  'Trainings',
                  style: TextStyle(
                      color: black, fontWeight: FontWeight.w900, fontSize: 36),
                ),
              ],
            ),
            Row(
              children: [
                Transform(
                  transform: Matrix4.rotationY(math.pi),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.view_headline,
                    size: 30.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
