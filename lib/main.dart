import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Teste",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Container is like a div
    return Container(
        alignment: Alignment.center,
        color: Colors.blueAccent,
        padding: EdgeInsets.only(top: 30, left: 15, right: 10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "Pa",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 20),
                )),
                Text(
                  "Tomato, Garlic",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "Marinara",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 20),
                )),
                Text(
                  "Teste, Garlic",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            PizzaImageWidget(),
            OrderButton()
          ],
        ));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza.png');
    Image image = Image(image: pizzaAsset, width: 400, height: 400);
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50),
      child: RaisedButton(
        child: Text("Order Pizza"),
        color: Colors.lightGreenAccent,
        elevation: 5,
        onPressed: () {
          order(context);
        },
      ),
    );

    return button;
  }

//BuildContext a context the especific widget is built
  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) => alert);
  }
}
