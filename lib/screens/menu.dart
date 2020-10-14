import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/Cards.dart';
import '../components/exitPopScope.dart';

class Algorithm extends StatefulWidget {
  @override
  _AlgorithmState createState() => _AlgorithmState();
}

class _AlgorithmState extends State<Algorithm> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onExit(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'ML Algo Vizualier',
            style: kappTitle,
          ),
          centerTitle: true,
          toolbarHeight: kAppToolbarHeight,
        ),
        backgroundColor: kBackgroundColor,
        body: Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          padding: EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              //--------------Linear Regression--------------//

              Card2(
                text2: "Linear Regression",
                onPress1: () {
                  Navigator.of(context).pushNamed('/LinearPart1');
                },
                textSubTitle1: "Introduction to Linear Regression",
                onPress2: () {
                  Navigator.of(context).pushNamed('/LinearPart2');
                },
                textSubTitle2: "Basic Simulation",
              ),

              kSizedBox,

              //---------------Decision Tree----------------//

              Card4(
                text2: "Decision Tree",
                onPress1: () {
                  Navigator.of(context).pushNamed('/DecisionPart1');
                },
                textSubTitle1: "Introduction to Decision Tree",
                onPress2: () {
                  Navigator.of(context).pushNamed('/DecisionPart2');
                },
                textSubTitle2: "Basic Simulation of Decision Tree",
                onPress3: () {
                  Navigator.of(context).pushNamed('/DecisionPart3');
                },
                textSubTitle3: "Gini Index and Information Gain",
                onPress4: () {
                  Navigator.of(context).pushNamed('/DecisionPart4');
                },
                textSubTitle4: "Gini Index Simulation",
              ),

              kSizedBox,

              //-----------SVM------------//

              Card2(
                text2: "SVM",
                onPress1: () {
                  print('Lets discuss about SVM -1');
                },
                textSubTitle1: "Introduction to SVM",
                onPress2: () {
                  print('Lets discuss about SVM -2');
                },
                textSubTitle2: "SVM Part 2",
              ),

              kSizedBox,

              //------------k-means clustering-----------//

              SimpleCard(
                onPress: () {
                  Navigator.of(context).pushNamed('/');
                },
                text1: 'K-Means Clustering',
              ),

              kSizedBox,

              //------------Logistic Regression-----------//

              SimpleCard(
                onPress: () {
                  Navigator.of(context).pushNamed('/');
                },
                text1: 'Logistic Regression',
              ),

              kSizedBox,

              //------------N N----------//

              SimpleCard(
                onPress: () {
                  Navigator.of(context).pushNamed('/');
                },
                text1: 'Neural Networks',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
