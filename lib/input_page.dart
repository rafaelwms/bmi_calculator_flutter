import 'package:flutter/material.dart';

const cellBackground = Color(0xFF1D1E33);
const bottomCellBackground = Color(0xFFEB1555);

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
                  colour: cellBackground,
                ),
              ),
              Expanded(
                child: ReusableContainer(
                  colour: cellBackground,
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
                  colour: cellBackground,
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
                  colour: cellBackground,
                ),
              ),
              Expanded(
                child: ReusableContainer(
                  colour: cellBackground,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: 80.0,
          color: bottomCellBackground,
        )
      ]),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  ReusableContainer({@required this.colour});

  final Color colour;

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
