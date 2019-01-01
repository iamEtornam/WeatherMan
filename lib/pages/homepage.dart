import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State < HomePage > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.jpg')
          )
        ),
        child: ListView(
          children: < Widget > [
            SizedBox(height: 16.0, ),
            Center(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                  child: Text('WeatherMan',
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: 'Ananda',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Divider(height: 2.0,
                color: Colors.white, ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 5.0),
              child: Center(
                child: Card(
                  color: Colors.white70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: < Widget > [
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 10.0, 0.0, 5.0),
                        child: Text('Today',
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 32.0,
                          fontFamily: 'Champagne_Limousines'
                        ),),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: < Widget > [
                          Padding(
                            padding: EdgeInsets.fromLTRB(16.0, 5.0, 8.0, 2.0),
                            child: Icon(Icons.wb_cloudy,
                              size: 80.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 2.0),
                            child: Text('21' + '°',
                              textAlign: TextAlign.center,
                              softWrap: true,
                              style: TextStyle(
                                fontSize: 40.0,
                                fontFamily: 'Champagne_Limousines',
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(crossAxisAlignment: CrossAxisAlignment.center,
                        children: < Widget > [
                          Padding(
                            padding: EdgeInsets.fromLTRB(16.0, 5.0, 5.0, 5.0),
                            child: Text('Mostly Sunny',
                            style: TextStyle(
                              fontFamily: 'Champagne_Limousines',
                            ),),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Divider(
                              color: Colors.black, ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16.0, 5.0, 5.0, 5.0),
                            child: Text('°C'),
                          ),
                        ], ),
                      SizedBox(height: 45.0, ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}