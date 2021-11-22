import 'package:flutter/material.dart';
import 'package:shortest_path/widgets.dart';


class SelectMaps extends StatefulWidget {
  const SelectMaps({Key key}) : super(key: key);

  @override
  _SelectMapsState createState() => _SelectMapsState();
}

class _SelectMapsState extends State<SelectMaps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nearest Hospital')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Select one map to proceed'),
            button('Map 1', context),
            button('Map 2', context),
            button('Map 3', context),
            SizedBox(height: 20,),
            button('Find Nearest Hospital', context),
          ],
        ),
      ),
    );
  }
}
