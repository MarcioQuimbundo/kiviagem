import 'package:flutter/material.dart';
import 'package:kiviagem/CustomShapeClipper.dart';
import 'package:kiviagem/main.dart';

final Color discountBackgroundColor = Color(0xFFFFE08D);
final Color flightBorderColor = Color(0xFFE6E6E6);
final Color chipBackgroundColor = Color(0xFFF6F6F6);

class FlightListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado da pesquisa"),
        centerTitle: true,
        elevation: 0.0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: <Widget>[
          FlightListTopPart(),
        ],
      ),
    );
  }
}

class FlightListTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [firstColor, secondColor])),
            height: 160.0,
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              elevation: 10.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Boston (BOS)",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Text(
                            "New York City (JFK)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 1,
                                          child: Icon(
                        Icons.import_export,
                        color: Colors.black,
                        size: 32.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
