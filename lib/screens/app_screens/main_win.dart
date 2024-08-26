import 'package:bmi_app/constants/app_colors.dart';
import 'package:bmi_app/screens/app_screens/normal_weight.dart';
import 'package:bmi_app/screens/app_screens/obese_class.dart';
import 'package:bmi_app/screens/app_screens/over_weight.dart';
import 'package:bmi_app/screens/app_screens/under_weight.dart';
import 'package:flutter/material.dart';

class MainWindow extends StatefulWidget {
  const MainWindow({super.key});

  @override
  State<MainWindow> createState() => _MainWindowState();
}

class _MainWindowState extends State<MainWindow> {
  final wtController = TextEditingController();
  final ftController = TextEditingController();
  final inController = TextEditingController();
  final agController = TextEditingController();
  bool malecontroller = false;
  bool femalecontrollter = false;
  Color _ffavIconColor = Colors.grey;
  Color _mfavIconColor = Colors.grey;

  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColors.offWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 90,
              ),
              child: Center(
                child: Text(
                  'BMI Calculator',
                  style: TextStyle(
                      color: AppColors.darkGrey.v900,
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Weight (in kg)',
                style: TextStyle(
                  color: AppColors.darkGrey.v300,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: wtController,
                textAlign: TextAlign.center,
                maxLines: 1,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "50.00",
                  hintStyle:
                      TextStyle(fontSize: 25, color: AppColors.darkGrey.v300),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Height (in ft)',
                style: TextStyle(
                  color: AppColors.darkGrey.v300,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: ftController,
                textAlign: TextAlign.center,
                maxLines: 1,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "feet",
                  hintStyle:
                      TextStyle(fontSize: 25, color: AppColors.darkGrey.v300),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Height (in inch)',
                style: TextStyle(
                  color: AppColors.darkGrey.v300,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: inController,
                textAlign: TextAlign.center,
                maxLines: 1,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "inch",
                  hintStyle:
                      TextStyle(fontSize: 25, color: AppColors.darkGrey.v300),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Age',
                style: TextStyle(
                  color: AppColors.darkGrey.v300,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: agController,
                textAlign: TextAlign.center,
                maxLines: 1,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "18",
                  hintStyle:
                      TextStyle(fontSize: 25, color: AppColors.darkGrey.v300),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => {
                      malecontroller = true,
                      setState(() {
                        if (_mfavIconColor == Colors.grey) {
                          _mfavIconColor = AppColors.primaryColors.neonRed;
                        } else {
                          _mfavIconColor = Colors.grey;
                        }
                      }),
                    },
                    style: IconButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fixedSize: const Size(150, 100),
                    ),
                    iconSize: 100,
                    icon: const Icon(
                      Icons.male_rounded,
                    ),
                    color: _mfavIconColor,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => {
                      femalecontrollter = true,
                      setState(() {
                        if (_ffavIconColor == Colors.grey) {
                          _ffavIconColor = AppColors.primaryColors.neonRed;
                        } else {
                          _ffavIconColor = Colors.grey;
                        }
                      }),
                    },
                    style: IconButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fixedSize: const Size(150, 100),
                    ),
                    iconSize: 100,
                    icon: const Icon(
                      Icons.female_rounded,
                    ),
                    color: _ffavIconColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: OutlinedButton(
                onPressed: () {
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inc = inController.text.toString();
                  var age = wtController.text.toString();
                  var male = malecontroller.toString();
                  var female = femalecontrollter.toString();

                  if (wt != "" &&
                      ft != "" &&
                      inc != "" &&
                      age != "" &&
                      (male != "" || female != "")) {
                    var iwt = int.parse(wt);
                    var ift = int.parse(ft);
                    var inct = int.parse(inc);

                    var tinch = (ift * 12) + inct;
                    var tcm = tinch * 2.54;
                    var tm = tcm / 100;
                    var bmi = iwt / (tm * tm);
                    var bmi1 = bmi.toStringAsFixed(1);

                    if (bmi < 18.3) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UnderWeight(
                                    bmi: bmi1,
                                  )));
                    } else if (bmi > 18.3 && bmi < 25.5) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NormalWeight(
                                    bmi: bmi1,
                                  )));
                    } else if (bmi > 25.6 && bmi < 28.9) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OverWeight(
                                    bmi: bmi1,
                                  )));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ObeseClass(
                                    bmi: bmi1,
                                  )));
                    }
                  } else {
                    setState(() {
                      result = "Please enter all the valid box";
                    });
                  }
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.primaryColors.neonRed,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size(320, 50),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        color: AppColors.primaryColors.offWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
