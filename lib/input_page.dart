import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableContainer(
                  colour: Color(0xFF1D1E33),
                ),
              ),
              Expanded(
                child: ReusableContainer(
                  colour: Color(0xFF1D1E33),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableContainer(
                  colour: Color(0xFF1D1E33),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableContainer(
                  colour: Color(0xFF1D1E33),
                ),
              ),
              Expanded(
                child: ReusableContainer(
                  colour: Color(0xFF1D1E33),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  ReusableContainer({@required this.colour});

  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour, //Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
