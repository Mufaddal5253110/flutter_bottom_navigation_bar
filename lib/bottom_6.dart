import 'package:flutter/material.dart';

class BottomNavSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Hello World')),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: Colors.deepPurple,
          shape: CircularNotchedRectangle(),
          child: Container(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.home, size: 40.0, color: Colors.white),
                    Icon(Icons.school, size: 40.0, color: Colors.white),
                    SizedBox.shrink(),
                    Icon(Icons.business_center,
                        size: 40.0, color: Colors.white),
                    Icon(Icons.contact_phone, size: 40.0, color: Colors.white)
                  ],
                ),
              ))),
    );
  }
}
