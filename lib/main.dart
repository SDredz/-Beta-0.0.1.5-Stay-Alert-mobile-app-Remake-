import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:after_layout/after_layout.dart';
import 'package:stay_alert_remake_2/my_flutter_app_icons.dart';
import 'package:flutter/services.dart';

import 'dart:async';

import 'CarouselWithDotsPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
      ),
      //debugShowCheckedModeBanner: false,
      title: "Stay Alert Remake",
      home: new Splash(),
    );
  }
}

final List<String> imgList = [
  'images/article0.jpg',
  'images/article1.jpg',
  'images/article2.jpg',
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Stay Alert App"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              //child:Icon(Icons.location_on)
              child: Text(
                "SDredz",
                style: TextStyle(
                  color: Colors.yellow[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              height: 50.0,
              width: 50.0,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black,
                child: Icon(Icons.location_on, size: 50.0),
              ),
            ),
            CarouselWithDotsPage(imgList: imgList),
          ],
        ),
      ),
      //Here I began to make the multiple buttons at the bottom of the main screen
      floatingActionButton: Wrap(
        //Here the multi-button section can be created
        direction: Axis.horizontal, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ireport()),
                  );
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.alerts),
              )), //button first

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Law()),
                  ); //action code for button 2
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.the_law),
              )), // button second

          Container(
              height: 70.0,
              width: 70.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PanicButton()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(
                  MyFlutterApp.panic,
                  size: 50.0,
                ),
              )), // button third

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Crimetracker()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.stats_and_the_heir),
              )), //button fourth

          Container(
            height: 50.0,
            width: 50.0,
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Covidtracker()),
                );
                //action code for button 3
              },
              backgroundColor: Colors.black,
              child: Icon(MyFlutterApp.covid),
            ),
          ), //button fifth
        ],
      ),
    );
  }
}

class Ireport extends StatelessWidget {
  const Ireport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("i-report"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              //child:Icon(Icons.location_on)
              child: Center(
                child: Text(
                  "SDredz,"
                  " "
                  "Kingston",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellow[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              height: 50.0,
              width: 50.0,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black,
                child: Icon(Icons.location_on, size: 50.0),
              ),
              //child: Text("Kingston"),
            ),
            Container(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Center(
                    child: Text(
                      "Reports",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.yellow[700],
                        //fontWeight: FontWeight.bold,
                        fontSize: 45,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "No Reports Made",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.yellow[700],
                        //fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              padding: EdgeInsets.only(top: 250),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      minimumSize: Size(300.0, 50.0),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Report a Crime',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Wrap(
        //Here the multi-button section can be created
        direction: Axis.horizontal, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ireport()),
                  );
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.alerts),
              )), //button first

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Law()),
                  ); //action code for button 2
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.the_law),
              )), // button second

          Container(
              height: 70.0,
              width: 70.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PanicButton()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(
                  MyFlutterApp.panic,
                  size: 50.0,
                ),
              )), // button third

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Crimetracker()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.stats_and_the_heir),
              )), //button fourth

          Container(
            height: 50.0,
            width: 50.0,
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Covidtracker()),
                );
                //action code for button 3
              },
              backgroundColor: Colors.black,
              child: Icon(MyFlutterApp.covid),
            ),
          ), //button fifth
        ],
      ),
    );
  }
}

class Law extends StatelessWidget {
  const Law({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Law"),
        //actions: [getSearch],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(),
              //child:Icon(Icons.location_on)
              child: Center(
                child: Text(
                  "SDredz,",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellow[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              height: 50.0,
              width: 50.0,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black,
                child: Icon(Icons.location_on, size: 50.0),
              ),
              //child: Text("Kingston"),
            ),
            Container(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 120),
                  child: Center(
                    child: Text(
                      "Kingston",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.yellow[700],
                        //fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StageArticle()),
                  );
                }, //image click/tap
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Stack(
                    children: [
                      Image.asset(
                        'images/gun_find.jpeg',
                        fit: BoxFit.cover,
                        width: 1000,
                        //height: 8000,
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(10, 0, 0, 0),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          child: Text(
                            'UPDATE: New Gun Laws will be taken in effect on Jan 1, 2022.',
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Wrap(
        //Here the multi-button section can be created
        direction: Axis.horizontal, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ireport()),
                  );
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.alerts),
              )), //button first

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Law()),
                  ); //action code for button 2
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.the_law),
              )), // button second

          Container(
              height: 70.0,
              width: 70.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PanicButton()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(
                  MyFlutterApp.panic,
                  size: 50.0,
                ),
              )), // button third

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Crimetracker()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.stats_and_the_heir),
              )), //button fourth

          Container(
            height: 50.0,
            width: 50.0,
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Covidtracker()),
                );
                //action code for button 3
              },
              backgroundColor: Colors.black,
              child: Icon(MyFlutterApp.covid),
            ),
          ), //button fifth
        ],
      ),
    );
  }
}

class StageArticle extends StatelessWidget {
  const StageArticle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Gun Laws Change"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              //child:Icon(Icons.location_on)
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur"
                " adipiscing elit. Nunc quis auctor mauris,"
                " quis facilisis arcu. Nam at diam ac diam "
                "convallis mollis quis in neque. Duis vehicula,"
                " massa sit amet tempus viverra, purus tortor"
                " pellentesque enim, non cursus magna ante et justo."
                " Mauris at iaculis quam. Quisque luctus ligula nec enim tristique,"
                " sed finibus justo iaculis. Nulla et finibus elit."
                " Vivamus euismod justo quis ante pellentesque imperdiet."
                " Etiam sollicitudin consequat congue. Etiam quis eleifend justo."
                " Quisque auctor id turpis ut fermentum. Cras vestibulum"
                " feugiat libero, non tempus sapien. Integer eros dui,"
                " egestas at accumsan eu, semper vitae mauris. Etiam "
                "molestie, enim ac pharetra posuere, ex nibh molestie neque,"
                " vitae fermentum turpis felis ut augue. Cras massa velit, "
                "suscipit non porta in, semper ut velit. Vestibulum luctus est"
                " a libero semper, nec tristique tortor consectetur.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Wrap(
        //Here the multi-button section can be created
        direction: Axis.horizontal, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ireport()),
                  );
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.alerts),
              )), //button first

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Law()),
                  ); //action code for button 2
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.the_law),
              )), // button second

          Container(
              height: 70.0,
              width: 70.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PanicButton()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(
                  MyFlutterApp.panic,
                  size: 50.0,
                ),
              )), // button third

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Crimetracker()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.stats_and_the_heir),
              )), //button fourth

          Container(
            height: 50.0,
            width: 50.0,
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Covidtracker()),
                );
                //action code for button 3
              },
              backgroundColor: Colors.black,
              child: Icon(MyFlutterApp.covid),
            ),
          ), //button fifth
        ],
      ),
    );
  }
}

class PanicButton extends StatelessWidget {
  const PanicButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Panic Button"),
        //actions: [getSearch],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(),
              //child:Icon(Icons.location_on)
              child: Center(
                child: Text(
                  "SDredz,",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellow[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              height: 50.0,
              width: 50.0,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black,
                child: Icon(Icons.location_on, size: 50.0),
              ),
              //child: Text("Kingston"),
            ),
            Container(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Center(
                    child: Text(
                      "Kingston",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.yellow[700],
                        //fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PanicConfirm()),
                  );
                }, //image click/tap
                child: Image(
                  image: AssetImage(
                    'images/Screenshot 2021-09-12 1817331.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Wrap(
        //Here the multi-button section can be created
        direction: Axis.horizontal, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ireport()),
                  );
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.alerts),
              )), //button first

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Law()),
                  ); //action code for button 2
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.the_law),
              )), // button second

          Container(
              height: 70.0,
              width: 70.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PanicButton()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(
                  MyFlutterApp.panic,
                  size: 50.0,
                ),
              )), // button third

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Crimetracker()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.stats_and_the_heir),
              )), //button fourth

          Container(
            height: 50.0,
            width: 50.0,
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Covidtracker()),
                );
                //action code for button 3
              },
              backgroundColor: Colors.black,
              child: Icon(MyFlutterApp.covid),
            ),
          ), //button fifth
        ],
      ),
    );
  }
}

class PanicConfirm extends StatelessWidget {
  const PanicConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Panic Button Confirm Sent"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              //child:Icon(Icons.location_on)
              child: Text(
                "The police are headed to your location",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Wrap(
        //Here the multi-button section can be created
        direction: Axis.horizontal, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ireport()),
                  );
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.alerts),
              )), //button first

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Law()),
                  ); //action code for button 2
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.the_law),
              )), // button second

          Container(
              height: 70.0,
              width: 70.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PanicButton()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(
                  MyFlutterApp.panic,
                  size: 50.0,
                ),
              )), // button third

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Crimetracker()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.stats_and_the_heir),
              )), //button fourth

          Container(
            height: 50.0,
            width: 50.0,
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Covidtracker()),
                );
                //action code for button 3
              },
              backgroundColor: Colors.black,
              child: Icon(MyFlutterApp.covid),
            ),
          ), //button fifth
        ],
      ),
    );
  }
}

class Covidtracker extends StatelessWidget {
  const Covidtracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Covid Tracker"),
        //actions: [getSearch],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 150),
              //child:Icon(Icons.location_on)
              child: Center(
                child: Text(
                  "UNDER CONSTRUCTION",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellow[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            Container(
              height: 50.0,
              width: 50.0,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.warning,
                  size: 70.0,
                  color: Colors.yellow,
                ),
              ),
              //child: Text("Kingston"),
            ),
          ],
        ),
      ),
      floatingActionButton: Wrap(
        //Here the multi-button section can be created
        direction: Axis.horizontal, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ireport()),
                  );
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.alerts),
              )), //button first

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Law()),
                  ); //action code for button 2
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.the_law),
              )), // button second

          Container(
              height: 70.0,
              width: 70.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PanicButton()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(
                  MyFlutterApp.panic,
                  size: 50.0,
                ),
              )), // button third

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Crimetracker()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.stats_and_the_heir),
              )), //button fourth

          Container(
            height: 50.0,
            width: 50.0,
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Covidtracker()),
                );
                //action code for button 3
              },
              backgroundColor: Colors.black,
              child: Icon(MyFlutterApp.covid),
            ),
          ), //button fifth
        ],
      ),
    );
  }
}

class Crimetracker extends StatelessWidget {
  const Crimetracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Crime Tracker"),
        //actions: [getSearch],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 150),
              //child:Icon(Icons.location_on)
              child: Center(
                child: Text(
                  "UNDER CONSTRUCTION",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellow[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            Container(
              height: 50.0,
              width: 50.0,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.warning,
                  size: 70.0,
                  color: Colors.yellow,
                ),
              ),
              //child: Text("Kingston"),
            ),
          ],
        ),
      ),
      floatingActionButton: Wrap(
        //Here the multi-button section can be created
        direction: Axis.horizontal, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ireport()),
                  );
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.alerts),
              )), //button first

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Law()),
                  ); //action code for button 2
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.the_law),
              )), // button second

          Container(
              height: 70.0,
              width: 70.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PanicButton()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(
                  MyFlutterApp.panic,
                  size: 50.0,
                ),
              )), // button third

          Container(
              height: 50.0,
              width: 50.0,
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Crimetracker()),
                  ); //action code for button 3
                },
                backgroundColor: Colors.black,
                child: Icon(MyFlutterApp.stats_and_the_heir),
              )), //button fourth

          Container(
            height: 50.0,
            width: 50.0,
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Covidtracker()),
                );
                //action code for button 3
              },
              backgroundColor: Colors.black,
              child: Icon(MyFlutterApp.covid),
            ),
          ), //button fifth
        ],
      ),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> with AfterLayoutMixin<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new HomePage()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new IntroScreen()));
    }
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Loading...'),
      ),
    );
  }
}

//Version 1 of the intro screen for the app, (I plan to use an intro slider instead of this)
class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        backgroundColor: Colors.black,
      ),
      body: new Center(
          child: Column(
        children: [
          Container(
            child: Image(
              image: AssetImage(
                'images/logo-8.png',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: new Text(
              'WELCOME',
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 25, right: 25, top: 20),
            child: new Text(
              'Welcome to the Stay Alert App\n\n'
              ' We have curated features with the sole intent'
              ' of keeping you and your family safe.',
              style: TextStyle(color: Colors.yellow),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 25, right: 25),
            child: new Text(
              'Your contribution to help the fight against'
              ' crime is valuable. We hope you continue'
              ' your support to live, work, raise families'
              ' and to do business.\n\n Thank You for Choosing Stay Alert',
              style: TextStyle(color: Colors.yellow),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
