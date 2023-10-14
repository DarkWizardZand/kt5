import 'package:flutter/material.dart';


Future<void> errorBuilder (BuildContext context, String title, String text,) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(text),
      );
    }
  );
}
