
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('one').tr(),
          SizedBox(height: 50.0,),
          Text('two').tr(),
          SizedBox(height: 50.0,),
          Text('three').tr(),
          SizedBox(height: 50.0,),
          Text('four').tr(),
        ],
      ),
    );
  }
}