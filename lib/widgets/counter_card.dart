import 'package:flutter/material.dart';
import 'package:mvc/models/counter_info.dart';

class CounterCard extends StatelessWidget {
  final CounterInfo counterInfo;
  final Function()? onClick;
  const CounterCard({super.key, required this.counterInfo, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                counterInfo.name.toString(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                counterInfo.counter.toString(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}