import 'package:bmi_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

// ignore: must_be_immutable
class ObeseClass extends StatefulWidget {
  String bmi;
  ObeseClass({super.key, required this.bmi});

  @override
  State<ObeseClass> createState() => _ObeseClassState();
}

class _ObeseClassState extends State<ObeseClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                    minimum: 0,
                    maximum: 35,
                    labelsPosition: ElementsPosition.outside,
                    ranges: <GaugeRange>[
                      GaugeRange(
                        startWidth: 50,
                        endWidth: 50,
                        startValue: 0,
                        endValue: 18.3,
                        color: AppColors.primaryColors.blue,
                      ),
                      GaugeRange(
                        startWidth: 50,
                        endWidth: 50,
                        startValue: 18.4,
                        endValue: 25.6,
                        color: AppColors.primaryColors.green,
                      ),
                      GaugeRange(
                        startWidth: 50,
                        endWidth: 50,
                        startValue: 25.7,
                        endValue: 29,
                        color: AppColors.primaryColors.yellow,
                      ),
                      GaugeRange(
                        startWidth: 50,
                        endWidth: 50,
                        startValue: 29.1,
                        endValue: 35,
                        color: AppColors.primaryColors.orange,
                      ),
                    ],
                    pointers: <GaugePointer>[
                      NeedlePointer(
                        value: double.tryParse(widget.bmi) ?? 0.0,
                        needleEndWidth: 5,
                        enableAnimation: true,
                      )
                    ],
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                        widget: Text(
                          widget.bmi,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        angle: 90,
                        positionFactor: 0.5,
                      )
                    ])
              ],
            ),
          ),
          Text(
            'Your BMI is...',
            style: TextStyle(
                color: AppColors.darkGrey.v900,
                fontSize: 25,
                fontWeight: FontWeight.w900),
          ),
          Text(
            widget.bmi,
            style: TextStyle(
                color: AppColors.darkGrey.v900,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                fixedSize: const Size(150, 50),
                backgroundColor: AppColors.primaryColors.orange,
              ),
              child: Text(
                "Obese Class 1",
                style: TextStyle(
                    color: AppColors.primaryColors.offWhite,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "You are on a stage of Obescity need to loss weight",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                  color: AppColors.darkGrey.v300),
            ),
          )
        ],
      )),
    );
  }
}
