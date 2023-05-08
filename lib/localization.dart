
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Localization extends StatefulWidget {
  const Localization({Key? key}) : super(key: key);

  @override
  State<Localization> createState() => _LocalizationState();
}

class _LocalizationState extends State<Localization> {

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 100.0),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    context.setLocale(Locale('ko', 'KO'));
                    print('execute ko button');
                  },
                  child: Text('Translate to Korean'),
                ),
                TextButton(
                  onPressed: () {
                    context.setLocale(Locale('en', 'US'));
                  },
                  child: Text('Translate to English'),
                ),

              ],
            ),
          ),

          SizedBox(height: 130,),

          Container(
            child: Center(
              child: Text('one').tr(),
            ),
          ),
        ],
      ),


    );
  }
}