import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Message {
  void give(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: const Color.fromARGB(255, 46, 46, 47),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
