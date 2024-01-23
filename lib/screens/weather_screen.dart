import 'package:flutter/material.dart';
import 'package:flutter_application_8/widgets/my_card.dart';

import '../widgets/additional_information.dart';
import '../widgets/main_highlight.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainHighlight(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Weather Forecast",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyCard(icon: Icons.cloud, temperature: "102", time: "09:00"),
                  MyCard(icon: Icons.sunny, temperature: "12", time: "10:00"),
                  MyCard(icon: Icons.cloud, temperature: "106", time: "11:00"),
                  MyCard(icon: Icons.sunny, temperature: "132", time: "12:00"),
                  MyCard(icon: Icons.cloud, temperature: "152", time: "13:00"),
                  MyCard(icon: Icons.sunny, temperature: "105", time: "14:00"),
                  MyCard(icon: Icons.cloud, temperature: "109", time: "15:00"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Additional Information",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInformation(
                  icon: Icons.water_drop,
                  name: "Humidity",
                  value: "94",
                ),
                AdditionalInformation(
                  icon: Icons.air,
                  name: "Wind Speed",
                  value: "100",
                ),
                AdditionalInformation(
                  icon: Icons.beach_access,
                  name: "Pressure",
                  value: "103",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
