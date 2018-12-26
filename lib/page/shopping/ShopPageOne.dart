///
/// Created by NieBin on 2018/12/25
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";

class ShopPageOne extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<ShopPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping one"),
      ),
      body: Text("Shopping page one"),
    );
  }
}
