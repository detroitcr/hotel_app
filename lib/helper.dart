import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

alertDialog(BuildContext context, String msg) {
  //
  // FlutterToast.showToast("Please Enter Your User Name", context,
  //     duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);

  Fluttertoast.showToast(
      msg: msg, gravity: ToastGravity.BOTTOM, toastLength: Toast.LENGTH_LONG);
}
