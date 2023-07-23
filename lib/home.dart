import 'package:flutter/material.dart';

import 'navigation_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      drawer: const NavDrawer(
      ),
      appBar: AppBar(
        title: const Text("Navigation Drawer",style: TextStyle(fontSize: 17,color: Colors.black87),),
        centerTitle: true,
      ),
    );
  }
}
