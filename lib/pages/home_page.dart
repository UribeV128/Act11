import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uribe0418/tab/crema_tab.dart';
import 'package:uribe0418/tab/exfo_tab.dart';
import 'package:uribe0418/tab/jabon_tab.dart';
import 'package:uribe0418/tab/hidra_tab.dart';

import '../tab/jabon_tab.dart';
import '../tab/prot_tab.dart';
import '../util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    MyTab(
      iconPath: 'assets/jabon.png',
    ),
    MyTab(
      iconPath: 'assets/crema.png',
    ),
    MyTab(
      iconPath: 'assets/exfoliante-facial.png',
    ),
    MyTab(
      iconPath: 'assets/hidratante.png',
    ),
    MyTab(
      iconPath: 'assets/protector-solar.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Color(0xff424242),
                  size: 36,
                ),
                onPressed: () {},
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Color(0xff424242),
                    size: 36,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          body: Column(children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'Cuida tu piel con',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    ' Neutrogena',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            TabBar(tabs: myTabs),
            Expanded(
              child: TabBarView(
                children: [
                  JabonTab(),
                  CremaTab(),
                  ExfoTab(),
                  HidraTab(),
                  ProtTab(),
                ],
              ),
            ),
          ]),
        ));
  }
}
