import 'package:flutter/material.dart';
import 'package:select/utils/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16,8,16,8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    ' © SELECT 2023',
                    style: TextStyle(
                      color: AppColors.backgroundColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    ' ALL RIGHTS RESERVED',
                    style: TextStyle(
                      color: AppColors.backgroundColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
