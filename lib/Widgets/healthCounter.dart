import 'package:flutter/material.dart';
import 'package:viktorina_app/Tools/Helper.dart';
class HealthCounter extends StatelessWidget {
  final int health;
  HealthCounter({required this.health});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Helper.getWidth(context: context, factor: 0.16),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0)
        ),
        color: Colors.red,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Icon(Icons.favorite, color: Colors.pink,),
            ),
            Container(
              child: Text('$health'),
            )
          ],
        ),
      )
    );
  }
}
