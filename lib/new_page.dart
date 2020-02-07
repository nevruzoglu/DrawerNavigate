import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String newPageTitle;

  NewPage(this.newPageTitle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Text(newPageTitle),
        ),
      ),
    );
  }
}
