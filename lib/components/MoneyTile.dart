import 'package:flutter/material.dart';

class MoneyTile extends StatelessWidget {
  const MoneyTile({super.key, required this.image, required this.name, required this.date, required this.amount});

  final String image;
  final String name;
  final String date;
  final String amount;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image, height: 40,),
      title:  Text(
        name,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.black),
      ),
      subtitle:  Text(
        date,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.grey),
      ),
      trailing: Text(
        amount,
        style: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 16, color: Colors.red),
      ),
    );
  }
}

