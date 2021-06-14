import 'package:flutter/material.dart';

save(BuildContext context) {
  return AlertDialog(
    content: Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
      child: Icon(
        Icons.check,
        color: Colors.white,
      ),
    ),
    actions: <Widget>[
      TextButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.pop(context);
        },
      )
    ],
  );
}
