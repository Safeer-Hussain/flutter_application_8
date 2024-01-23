import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final IconData icon;
  final String time;
  final String temperature;
  const MyCard({
    required this.icon,
    required this.temperature,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: Column(children: [
          Text(
            time,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Icon(icon),
          const SizedBox(height: 10),
          Text(
            temperature,
            style: const TextStyle(fontSize: 16),
          )
        ]),
      ),
    );
  }
}
