import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Lists.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
                          color: Colors.transparent,
                          highlightColor: Colors.deepOrange,
                          child: Text('  Delivery Time  '),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.deepOrange,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(30.0))),
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: FlatButton(
                          textColor: Colors.white,
                          color: Colors.transparent,
                          highlightColor: Colors.deepOrange,
                          child: Text('  Top Offer  '),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.deepOrange,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(30.0))),
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: FlatButton(
                          textColor: Colors.white,
                          color: Colors.transparent,
                          highlightColor: Colors.deepOrange,
                          child: Text('  Top Offer  '),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.deepOrange,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(30.0))),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListView.builder(
                shrinkWrap: true,
                //scrollDirection: Axis.horizontal,
                itemCount: rname.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,

                    margin: EdgeInsets.all(5),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(
                            image[index],
                            scale: 1,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          height: 100,
                          width: 215,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(rname[index],
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Text(category[index],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  )),
                              Row(
                                children: [
                                  Icon(Icons.delivery_dining,
                                      color: Colors.deepOrange),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    dtime[index],
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.local_offer_outlined,
                                      color: Colors.deepOrange),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(off[index])
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                            child: Icon(Icons.star, color: Colors.deepOrange))
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
