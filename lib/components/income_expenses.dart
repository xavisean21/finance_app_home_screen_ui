import 'package:flutter/material.dart';

class IncomeExpenses extends StatelessWidget {
  final String text;
  final IconData iconData;
  final String amount;

  const IncomeExpenses({ required this.text, required this.iconData, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              child: Center(
                  child: Icon(
                    iconData,
                    color: Colors.white,
                  )),
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            SizedBox(width: 5,),
            Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white70),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Text(
          amount,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Colors.white),
        ),
      ],
    );
  }
}
