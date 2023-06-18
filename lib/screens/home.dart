import 'package:bmi_cal/constants/constants.dart';
import 'package:bmi_cal/cubit/cubit.dart';
import 'package:bmi_cal/cubit/states.dart';
import 'package:bmi_cal/widgets/left_bar.dart';
import 'package:bmi_cal/widgets/right_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          AppCubit cubit = AppCubit.get(context);
          cubit.result ??= 0;
          cubit.bodyStatus ??= '';
          return Scaffold(
            appBar: AppBar(
              title: Text('BMI Calculator'),
            ),
            body: ListView(
              // padding: EdgeInsets.symmetric(vertical: 16),
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 110,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: accentHexColor,
                        ),
                        textAlign: TextAlign.center,
                        controller: cubit.heightController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'HEIGHT',
                          hintStyle: TextStyle(
                            color: Colors.white60,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 115,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: accentHexColor,
                        ),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        controller: cubit.weightController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'WEIGHT',
                          hintStyle: TextStyle(
                            color: Colors.white60,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 230,
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          cubit.calculate();
                        },
                        child: Text(
                          'CALCULATE',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: accentHexColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "${cubit.result}",
                        style: TextStyle(
                          fontSize: 30,
                          color: accentHexColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        '${cubit.bodyStatus}',
                        style: TextStyle(
                          color: accentHexColor,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                // Spacer(),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      leftBar(),
                      // SizedBox(
                      //   height: 100,
                      // ),
                      rightBar(),
                      SizedBox()
                    ],
                  ),
                ),
                // SizedBox(height: ),
              ],
            ),
          );
        },
      ),
    );
  }
}
