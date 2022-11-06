import 'package:flutter/material.dart';

import '../components/MoneyTile.dart';
import '../components/income_expenses.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.blue[700],
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.bar_chart,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue[700],
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )),
            IconButton(
              icon: Icon(
                Icons.wallet,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Stack(
                  children: [
                    Positioned(
                        top: 25,
                        left: 300,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Container(
                              height: 40,
                              width: 40,
                              color: Colors.white12,
                              child: Icon(
                                Icons.notification_add_outlined,
                                size: 30,
                                color: Colors.white,
                              ),
                            ))),
                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good afternoon',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white70),
                          ),
                          Text(
                            'Chukumah Xavier',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 160,
            left: 20,
            child: Container(
              height: 170,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Total Balance',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white70),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.transparent,
                          child: Icon(
                            Icons.more_horiz,
                            size: 30,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Text(
                      '\$2,000.00',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        IncomeExpenses(
                          text: 'Income',
                          iconData: Icons.arrow_downward,
                          amount: '\$2,250',
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        IncomeExpenses(
                            text: 'Expenses',
                            iconData: Icons.arrow_upward,
                            amount: '\$250')
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 20,
            child: Container(
              height: 320,
              width: 320,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Transaction History',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        MoneyTile(image: 'images/up.png', name: 'upwork', date: 'today', amount: '-\$ 5',),
                        MoneyTile(image: 'images/cre.png', name: 'bankmellat', date: 'today', amount: '-\$ 950',),
                        MoneyTile(image: 'images/mac.jpg', name: 'McDonald\'s', date: 'yesterday', amount: '-\$ 20',),
                        MoneyTile(image: 'images/Star.jpg', name: 'Starbucks', date: 'today', amount: '-\$ 500',),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

