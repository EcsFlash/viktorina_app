import 'package:flutter/material.dart';
import '../Tools/Helper.dart';
Widget Counter({required BuildContext context, required int stars}){
  return Align(
    alignment: Alignment.topRight,
    child: Container(
        width: Helper.getWidth(context: context, factor: 0.20),
        child: Material(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          color: Colors.red,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Icon(Icons.star),
              ),
              Container(
                child: Text('${stars}'),
              )
            ],
          ),
        )
    ),
  );
}