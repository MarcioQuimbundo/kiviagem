import 'package:flutter/material.dart';

final Color discountBackgroundColor = Color(0xFFFFE08D);
final Color flightBorderColor = Color(0xFFE6E6E6);
final Color chipBackgroundColor = Color(0xFFF6F6F6);

class FlightListaing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado da pesquisa"),
        centerTitle: true,
        leading: InkWell(
          onTap: () {},
          child: Icon(Icons.arrow_back)),
      ),
    );
  }
}
