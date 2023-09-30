import 'package:flutter/material.dart';

class TabBarController extends StatefulWidget {
  const TabBarController({super.key});

  @override
  State<TabBarController> createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [TabBar(
              controller:tabController ,
              labelStyle: TextStyle(fontSize: 20),
              labelColor: Colors.black,
              indicator: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.red))),
              tabs: const [
            Tab(
              text: "tiktok",
            ),
            Tab(
              text: "alarm",
            ),
            Tab(
              text: "Call",
            ),
          ]),
            Expanded(
              child: TabBarView(
                  controller:tabController,
                  children: const [
                    Icon(Icons.tiktok,color: Colors.red,size: 100),
                    Icon(Icons.access_alarm,color: Colors.red,size: 100),
                    Icon(Icons.call,color: Colors.red,size: 100),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
