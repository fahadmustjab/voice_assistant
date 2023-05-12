import 'package:chatgpt_app/pallete.dart';
import 'package:flutter/material.dart';

class FeatureBox extends StatefulWidget {
  final color;
  final text1;
  final text2;
  const FeatureBox(
      {super.key,
      required this.color,
      required this.text1,
      required this.text2});

  @override
  State<FeatureBox> createState() => _FeatureBoxState();
}

class _FeatureBoxState extends State<FeatureBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(left: 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.text1,
                style: const TextStyle(
                  color: Pallete.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cera Pro',
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              widget.text2,
              style: const TextStyle(
                color: Pallete.blackColor,
                fontFamily: 'Cera Pro',
              ),
            )
          ],
        ),
      ),
    );
  }
}
