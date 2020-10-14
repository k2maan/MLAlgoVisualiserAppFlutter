import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/BottomAppBar.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';

class LinearRegPart1 extends StatefulWidget {
  @override
  _LinearRegPart1State createState() => _LinearRegPart1State();
}

class _LinearRegPart1State extends State<LinearRegPart1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Introduction To Linear Regression', style: kappSubTitle),
          toolbarHeight: kAppToolbarHeight,
          leading: IconButton(
            icon: kArrowBackIcon,
            onPressed: () => showDialogBox(context),
          ),
        ),
        body: Container(),
        bottomNavigationBar: BottomBar(
          btext1: '',
          bonPress1: () {},
          btext2: 'Linear Regression Simulation',
          bonPress2: () {
            Navigator.of(context).pushNamed('/LinearPart2');
          },
        ),
      ),
    );
  }
}
