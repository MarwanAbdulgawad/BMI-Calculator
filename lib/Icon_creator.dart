import 'package:flutter/material.dart';

class iconcon extends StatelessWidget {
  final IconData ic ;
  final String name;
  const iconcon({ this.ic,this.name });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(ic,
            size: 70,
          ),
          SizedBox(
            height: 10,
          ),
          Text(name,
            style: TextStyle(
                fontSize: 25
            ),
          )

        ]
    );
  }
}