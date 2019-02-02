import 'package:flutter/material.dart';
import 'package:kiviagem/CustomShapeClipper.dart';

void main() => runApp(MaterialApp(
  title: "Kiviagem Mock Up",
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

class HomeScreenTopPart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenTopState();
  }
}

class _HomeScreenTopState extends State<HomeScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(height: 400.0,),
        )
      ],
    );
  }
}