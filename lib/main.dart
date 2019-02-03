import 'package:flutter/material.dart';
import 'package:kiviagem/CustomShapeClipper.dart';

void main() => runApp(MaterialApp(
      title: "Kiviagem Mock Up",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ));

Color firstColor = Color(0xFFF47D15);
Color secondColor = Color(0xFFEF7772C);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          HomeScreenTopPart(),
        ],
      ),
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
          child: Container(
              height: 400.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [firstColor, secondColor])),
                  ),
        )
      ],
    );
  }
}
