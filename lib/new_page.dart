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
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset('assets/1boat.png'),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Icon(Icons.favorite_border, color: Colors.white),
                    height: 16,
                    width: 32,
                  ),
                  Positioned(
                      bottom: 18,
                      left: 16,
                      child: Container(
                        height: 16,
                        width: 32,
                        child: Image.asset('assets/tr.png'),
                      )),
                  Positioned(
                      bottom: 16,
                      left: 58,
                      child: Text(
                        'Sun Odysey',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      bottom: 16,
                      right: 16,
                      child: Text(
                        '\$100.000.000',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
              Stack(
                children: <Widget>[
                  Image.asset('assets/2boat.png'),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Icon(Icons.favorite_border, color: Colors.white),
                    height: 16,
                    width: 32,
                  ),
                  Positioned(
                    bottom: 18,
                    left: 16,
                    child: Image.asset('assets/ca.png'),
                    height: 16,
                    width: 32,
                  ),
                  Positioned(
                      bottom: 16,
                      left: 58,
                      child: Text(
                        'Mad Duster',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      bottom: 16,
                      right: 16,
                      child: Text(
                        '\$10.000.000',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
              Stack(
                children: <Widget>[
                  Image.asset('assets/3boat.png'),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Icon(Icons.favorite_border, color: Colors.white),
                    height: 16,
                    width: 32,
                  ),
                  Positioned(
                    bottom: 18,
                    left: 16,
                    child: Image.asset('assets/fr.png'),
                    height: 16,
                    width: 32,
                  ),
                  Positioned(
                      bottom: 16,
                      left: 58,
                      child: Text(
                        'Moon Rider',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      bottom: 16,
                      right: 16,
                      child: Text(
                        '\$22.000.000',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
              Stack(
                children: <Widget>[
                  Image.asset('assets/4boat.png'),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Icon(Icons.favorite_border, color: Colors.white),
                    height: 16,
                    width: 32,
                  ),
                  Positioned(
                    bottom: 18,
                    left: 16,
                    child: Image.asset('assets/ca.png'),
                    height: 16,
                    width: 32,
                  ),
                  Positioned(
                      bottom: 16,
                      left: 58,
                      child: Text(
                        'Deep Blur',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      bottom: 16,
                      right: 16,
                      child: Text(
                        '\$260.000.000',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
