import 'package:bmi_cal/constants/constants.dart';
import 'package:flutter/material.dart';

Widget leftBar() => Container(
      height: 80,
      alignment: AlignmentDirectional.centerEnd,
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 20,
              width: 25,
              decoration: BoxDecoration(
                  color: accentHexColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
              width: 60,
              decoration: BoxDecoration(
                  color: accentHexColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
              width: 25,
              decoration: BoxDecoration(
                  color: accentHexColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
            ),
          ],
        ),
      ),
    );
