///
/// Created by NieBin on 2018/12/25
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";

class StatisticPageOne extends StatefulWidget {
  @override
  _StatisticOneState createState() => _StatisticOneState();
}

class _StatisticOneState extends State<StatisticPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up one"),
      ),
      body: Text("Sign up page one"),
    );
  }
}
