import 'dart:async';
import 'package:demo1/pages/charging%20Sceen/charging%20screen%20widgets/charging_details_container.dart';
import 'package:demo1/utils/size_config.dart';
import 'package:flutter/material.dart';

class ChargingScreen extends StatefulWidget {
  const ChargingScreen({super.key});

  @override
  State<ChargingScreen> createState() => _ChargingScreenState();
}

class _ChargingScreenState extends State<ChargingScreen> {
  late String hour;
  late String min;
  int minutes = 0;

  @override
  void initState() {
    hour = "0";
    min = "20";
    super.initState();
  }

  void calculateValue() {
    // function to be comleted to gradually increase value of curves
    Timer.periodic(const Duration(minutes: 1), (Timer t) {
      minutes += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("MG Motors ZS EV"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.teal[200],
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "CHARGING IN PROGRESS",
                    style: TextStyle(
                        color: Colors.green[600], fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(50),
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  ChargingDeatilsWidget(hour: hour, min: min),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(140),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 250,
                            width: 250,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                              color: Colors.teal,
                              value: 0.9,
                              strokeWidth: 15,
                            ),
                          ),
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                              color: Colors.yellow,
                              value: 0.1,
                              strokeWidth: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
        child: MaterialButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (c) => const ChargingScreen()));
            },
            color: Colors.red,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(15),
                horizontal: getProportionateScreenWidth(30)),
            child: const Text(
              "Stop Session",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
