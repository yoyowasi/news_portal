import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            spacing: 10,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding:EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: 
                Text(
                  'News',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
              Text('Portal',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
              ),
              ),
            ],
          );
  }
}