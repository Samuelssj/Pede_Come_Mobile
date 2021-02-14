import 'package:flutter/material.dart';
import 'package:pede_comer/shared/cores.dart';
import 'package:pede_comer/tab/home_tab.dart';
import 'package:pede_comer/widgets/custom_drawer.dart';

final List<String> produtos = ['produto1','produto2'];


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  final _pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(),
        ),
      ],
    );
  }
}
