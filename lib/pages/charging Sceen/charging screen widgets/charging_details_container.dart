import "package:demo1/pages/charging%20Sceen/charging%20screen%20widgets/charger_detail.dart";
import "package:demo1/pages/charging%20Sceen/charging%20screen%20widgets/info_column.dart";
import "package:demo1/utils/size_config.dart";
import "package:flutter/material.dart";

class ChargingDeatilsWidget extends StatelessWidget {
  const ChargingDeatilsWidget({
    super.key,
    required this.hour,
    required this.min,
  });

  final String hour;
  final String min;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenHeight(230),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 80),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const InfoColumn(
                      text: "0.35 KWh",
                      color: Colors.teal,
                      isTime: false,
                    ),
                    InfoColumn(
                      text: "$hour h $min m",
                      color: Colors.yellow,
                      isTime: true,
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                const Divider(),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "CHARGER DETAILS",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChargerDetailColumn(
                          image: "assets/station_marker.png",
                          heading: "Sobha Mall",
                          text: "Ashok Nagar, Bengaluru",
                          isBold: false,
                        ),
                        VerticalDivider(
                          color: Colors.white,
                        ),
                        ChargerDetailColumn(
                          image: "assets/Type 2.png",
                          heading: "AC",
                          text: "Type 2 55",
                          isBold: true,
                        ),
                        VerticalDivider(
                          color: Colors.white,
                        ),
                        ChargerDetailColumn(
                          image: "assets/station_marker.png",
                          heading: "7.2 kw",
                          text: "Power",
                          isBold: true,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
