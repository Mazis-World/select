import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:select/colors.dart';

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;

  FeatureCard({
  required this.icon,
  required this.title,
  required this.content,
});

@override
Widget build(BuildContext context) {
  return Container(
    width: 250,
    height: 250,
    child: Card(
      color: Colors.black,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Icon(
                    icon,
                    size: 32.0,
                    color: AppColors.backgroundColor,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: AppColors.backgroundColor,

                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    content,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.0,
                        color: AppColors.backgroundColor
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}