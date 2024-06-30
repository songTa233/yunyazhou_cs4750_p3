import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reward/helper/extension/string_extension.dart';

abstract class BasePageState<T extends StatefulWidget> extends State<T> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            color: Colors.black,
            child: 'bg'.imgAsset(width: double.maxFinite, height: double.maxFinite, fit: BoxFit.fill),
          ),
          buildContent(context)
        ],
      ),
    );
  }

  Widget buildContent(BuildContext context);

}