import 'package:flutter/material.dart';
class Skillbr extends StatelessWidget {
  final double value;
  const Skillbr({super.key,required this.value});

  @override
  Widget build(BuildContext context,) {

    return
      Container(
        width: 400,
        height: 20,
        decoration: BoxDecoration(
          color: Color(0xFF010E18),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 400 * value, // dynamic width
            height: 20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      );
    }

  }

