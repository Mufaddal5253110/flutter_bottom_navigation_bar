import 'package:flutter/material.dart';

class BottomNavSeven extends StatefulWidget {
  @override
  _BottomNavSevenState createState() => _BottomNavSevenState();
}

class _BottomNavSevenState extends State<BottomNavSeven>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = new TabController(initialIndex: 0, length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar 1"),
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.home),
            ),
            new Tab(
              icon: Icon(Icons.favorite),
            ),
            new Tab(
              icon: Icon(Icons.add_shopping_cart),
            ),
            new Tab(
              icon: Icon(Icons.person),
            ),
          ],
          controller: tabController,
        ),
      ),
      body: new TabBarView(
        children: <Widget>[
          new NewPage("First"),
          new NewPage("Second"),
          new NewPage("Third"),
          new NewPage("Fourth")
        ],
        controller: tabController,
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
