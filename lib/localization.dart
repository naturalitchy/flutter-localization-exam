
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization_exam01/home_screen.dart';
import 'package:localization_exam01/login_screen.dart';

class Localization extends StatefulWidget {
  const Localization({Key? key}) : super(key: key);

  @override
  State<Localization> createState() => _LocalizationState();
}

class _LocalizationState extends State<Localization> with TickerProviderStateMixin {

  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    _tabController!.addListener(_tabControllerListen);
    super.initState();
  }

  _tabControllerListen() {
    setState(() {

    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController!.removeListener(_tabControllerListen);
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              context.setLocale(Locale('ko', 'KO'));
            },
            child: Text(
              'Korean',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              context.setLocale(Locale('en', 'US'));
            },
            child: Text(
              'English',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomeScreen(),
          LoginScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabController!.index,
        onTap: (int index) {
          setState(() {
            _tabController!.animateTo(index);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'login',
          ),
        ],
      ),

    );
  }
}