import 'package:flutter/material.dart';

import '../constants/constants.dart';

Widget rightBar() => Container(
      height: 80,
      alignment: AlignmentDirectional.bottomStart,
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                  color: accentHexColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                  color: accentHexColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
            ),
          ],
        ),
      ),
    );
