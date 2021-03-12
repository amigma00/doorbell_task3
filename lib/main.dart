import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          accentColor: Colors.deepOrange, primaryColor: Colors.deepOrange),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.deepOrange,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_alt_sharp),
            color: Colors.deepOrange,
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.deepOrange),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'All Restaurant',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //SizedBox(width: 10),

                  Container(
                    child: FlatButton(
                        textColor: Colors.white,
                        color: Colors.deepOrange,
                        child: Text('All'),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: FlatButton(
                        textColor: Colors.white,
                        color: Colors.deepOrange,
                        child: Text('  Delivery Time  '),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: FlatButton(
                        textColor: Colors.white,
                        color: Colors.deepOrange,
                        child: Text('  Top Offer  '),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: FlatButton(
                        textColor: Colors.white,
                        color: Colors.deepOrange,
                        child: Text('  Top Offer  '),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.asset(
                    'resources/db.jpg',
                    scale: 5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  height: 100,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Raghu Franky',
                          style: TextStyle(

                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('Fast Food Corners',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          )),
                      Row(
                        children: [
                          Icon(Icons.delivery_dining,color: Colors.deepOrange),
                          SizedBox(width: 5,),
                          Text('Delivery in 35 mins',style: TextStyle(color: Colors.grey,),)
                        ],
                      ),Row(
                        children: [
                          Icon(Icons.local_offer_outlined,color: Colors.deepOrange),
                          SizedBox(width: 5,),
                          Text('Up to 13% off')
                        ],
                      ),
                    ],
                  ),
                ),
                Container(child: Icon(Icons.star,color: Colors.deepOrange))
              ],
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}