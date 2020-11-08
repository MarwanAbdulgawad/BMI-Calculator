import 'package:flutter/material.dart';



class con extends StatelessWidget {
  final Color colo;
  final Widget cardbody;
  con({@required this.colo, this.cardbody});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardbody,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colo,
        borderRadius: BorderRadius.circular(10.0),
      ),

    );
  }
}
