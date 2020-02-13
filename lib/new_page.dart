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
              ShipCard(
                shipName: 'Odyseyy',
                shipPic: 'assets/1boat.png',
                shipPrice: '\$100.000.000',
                flagPic: 'assets/tr.png',
              ),
              ShipCard(
                shipName: 'Levinski',
                shipPic: 'assets/2boat.png',
                shipPrice: '\$45.000.000',
                flagPic: 'assets/ca.png',
              ),
              ShipCard(
                shipName: 'Moramati Folkart',
                shipPic: 'assets/3boat.png',
                shipPrice: '\$10.000.000',
                flagPic: 'assets/tr.png',
              ),
              ShipCard(
                shipName: 'Moon Rider',
                shipPic: 'assets/4boat.png',
                shipPrice: '\$200.000.000',
                flagPic: 'assets/fr.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShipCard<ListTile> extends StatelessWidget {
  final String shipPic;
  final String flagPic;
  final String shipName;
  final String shipPrice;

  ShipCard({this.shipName, this.shipPrice, this.shipPic, this.flagPic});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      //! Swipe Right to delete
      key: ValueKey(Stack),
      background: Container(
        color: Colors.red,
        child: Icon(
          Icons.transit_enterexit,
          size: 40,
          color: Colors.white,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Image.asset(shipPic),
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
                child: Image.asset(flagPic),
              )),
          Positioned(
              bottom: 16,
              left: 58,
              child: Text(
                shipName,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
          Positioned(
              bottom: 16,
              right: 16,
              child: Text(
                shipPrice,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ))
        ],
      ),
    );
  }
}
