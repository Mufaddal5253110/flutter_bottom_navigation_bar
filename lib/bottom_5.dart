import 'package:flutter/material.dart';

class BottomNavFive extends StatefulWidget {
  @override
  _BottomNavFiveState createState() => _BottomNavFiveState();
}

class _BottomNavFiveState extends State<BottomNavFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 10),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            // backgroundColor: Colors.yellow,
            elevation: 5,
            onPressed: () {},
            child: Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  shape: BoxShape.circle,
                  color: Colors.deepPurple),
              child: Icon(Icons.add, size: 40),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: new Container(
        height: 60.0,
        color: Colors.white,
        // padding: new EdgeInsets.only(top: 0.0),
        child: new Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.white,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.deepPurple,
              bottomAppBarColor: Colors.green,
              textTheme: Theme.of(context).textTheme.copyWith(
                  caption: new TextStyle(
                      color: Colors
                          .blueGrey))), // sets the inactive color of the `BottomNavigationBar`
          child: new BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(
                    icon: new Icon(Icons.home),
                    label: 'Home',
                    backgroundColor: Colors.black),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.perm_identity), label: 'Person'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz), label: 'More'),
              ]),
        ),
      ),
    );
  }
}
