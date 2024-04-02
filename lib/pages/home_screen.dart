import 'package:demo1/pages/charging%20Sceen/charging_screen.dart';
import 'package:demo1/main.dart';
import 'package:demo1/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController timeController = TextEditingController();
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
                "Please enter the time required by your vehicle to be charged in miutes"),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: timeController,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                labelText: 'Time',
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black12, width: 2),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                floatingLabelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.black12, width: 1.5),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                errorText: _validate ? 'Time Can\'t Be Empty' : null,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]')),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
        child: MaterialButton(
            onPressed: () {
              time = timeController.text;
              if (timeController.text.isEmpty) {
                setState(() {
                  _validate = true;
                });
              } else {
                timeController.clear();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) => const ChargingScreen()));
              }
            },
            color: Colors.lightGreen,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(15),
                horizontal: getProportionateScreenWidth(30)),
            child: const Text("Enter")),
      ),
    );
  }
}
