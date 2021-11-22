import 'package:flutter/material.dart';
import 'package:shortest_path/floydWarshallAlgo.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

const int inf = 10000000;

class _MyHomePageState extends State<MyHomePage> {
  List<List<int>> graph =  [[0, inf, inf, 3, inf, inf],
    [inf, inf, inf, inf, inf, inf],
    [inf, inf, 0, inf, inf, inf],
    [inf, inf, inf, inf, inf, inf],
    [inf, 0, 2, 1, inf, inf],
    [inf, inf, inf, inf, inf, inf],
    [inf, 0, inf, 0, inf, 2],
    [inf, inf, inf, inf, inf, inf],];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int clx = 0, cly = 0;
    int ngx = 0, ngy = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: size.height * 0.6,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.9,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Text('Current Location  : ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17),
                          ),
                          Text('($clx , $cly)',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17),),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text('Nearest Garage    : ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17),
                          ),
                          Text('($ngx , $ngy)',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                    ),
                    child: InkWell(
                      onTap: () {
                        floydWarshall(graph);
                      },
                      child: Text(
                        'Find Shortest Path',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
