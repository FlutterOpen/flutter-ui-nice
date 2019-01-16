import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
import 'package:flutter_ui_nice/const/color_const.dart';

class ShopPageNineteen extends StatefulWidget {
  @override
  _ShopNineteenState createState() => _ShopNineteenState();
}

class _ShopNineteenState extends State<ShopPageNineteen> {
  Widget _backButton() {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 20),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(7, 7, 7, 1), Color.fromRGBO(59, 59, 59, 1)],
          ),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
          child: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: () {
          print("Go Back");
        },
      )),
    );
  }

  List savedcards = [
    [RED, RED_LIGHT],
    [BLUE_DEEP, BLUE_LIGHT],
    [GREEN, BLUE_LIGHT]
  ];
  List cardname = ["Lorem Ipsum", "Mitchell johnson", "Michael Bernard"];

  Widget textfield(String hint) {
    return TextField(
      decoration: InputDecoration(
        hasFloatingPlaceholder: false,
        labelText: hint,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Column(children: <Widget>[
          Container(
            //appbar
            //appbar
            height: 80,
            decoration:
                BoxDecoration(gradient: LinearGradient(colors: [YELLOW, BLUE])),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: FractionalOffset.center,
                    child: Text(
                      "PAYMENT",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    alignment: FractionalOffset.centerRight,
                    margin: EdgeInsets.only(top: 20),
                    child: IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Color.fromRGBO(7, 7, 7, 1),
                        size: 30,
                      ),
                      onPressed: () {
                        print("More Vertical options needed");
                      },
                    ),
                  ),
                  flex: 1,
                )
              ],
            ),
          ), //appbar end
          Expanded(
            //Button Background
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  colors: [YELLOW, BLUE],
                )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,
                          children: <Widget>[
                            Opacity(
                              opacity: 0.5,
                              child: Image.asset(
                                "assets/images/shopping/background.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              color: Color.fromRGBO(168, 203, 253, 0.4),
                            ),
                            ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder:
                                  (BuildContext context, int currentcardindex) {
                                return InkWell(
                                  onTap: () {
                                    print("Card Tapped:" +
                                        currentcardindex.toString());
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    width:
                                        MediaQuery.of(context).size.width / 1.2,
                                    margin: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors:
                                                savedcards[currentcardindex]),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      //card design
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            alignment: FractionalOffset.topLeft,
                                            child: Switch(
                                              value: true,
                                              onChanged: (bool status) {
                                                print("Switch is" +
                                                    status.toString());
                                              },
                                            ),
                                          ),
                                          flex: 2,
                                        ),
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                  "**** **** 9012",
                                                ),
                                                alignment: FractionalOffset
                                                    .bottomCenter,
                                              ),
                                            ],
                                          ),
                                          flex: 1,
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: Text(
                                                    cardname[currentcardindex]
                                                        .toString()),
                                                flex: 4,
                                              ),
                                              Expanded(
                                                child: Container(),
                                                flex: 3,
                                              ),
                                              Expanded(
                                                child: Text("08/23"),
                                                flex: 2,
                                              )
                                            ],
                                          ),
                                          flex: 1,
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ]),
                      flex: 4,
                    ),
                    Expanded(
                      //formfields
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: SingleChildScrollView(
                            child: Column(
                          children: <Widget>[
                            textfield("Name on the Card"),
                            textfield("Card Number"),
                            textfield("Expiration Date"),
                            textfield("CVV")
                          ],
                        )),
                      ),
                      flex: 5,
                    ),
                    Expanded(
                      child: Container(
                        alignment: FractionalOffset.center,
                        height: 80,
                        child: FlatButton(
                          color: Color.fromRGBO(7, 7, 7, 1),
                          textColor: Color.fromRGBO(198, 193, 124, 1),
                          onPressed: () {},
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text("Pay",
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ),
                      ),
                      flex: 2,
                    )
                  ],
                )),
          )
        ]),
        Container(margin: EdgeInsets.only(top: 20), child: _backButton())
      ],
    ));
  }
}
