import 'package:flutter/material.dart';
import 'new_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
          fontFamily: 'Lato',
          primaryColor: TargetPlatform.android != null
              ? Colors.grey.shade50
              : Colors.grey.shade100),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.grey.shade50,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    UserAccountsDrawerHeader(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      accountName: Text(
                        'BurakN.ux',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      accountEmail: Text(
                        'nevruzoglu@gmail.com',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      currentAccountPicture: CircleAvatar(
                          backgroundImage: AssetImage('screens/52828295.jpg')),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: FlatButton.icon(
                        icon: Icon(FontAwesomeIcons.searchDollar),

                        onPressed: () => Navigator.of(context)
                            .pop(), // without onPress, style not showing
                        color: Color(0xff12324F),
                        textColor: Colors.white,
                        label: Text(
                          'Find Boats',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    ListTile(
                        leading: Icon(Icons.open_with),
                        title: Text('Buy Boats'),
                        // trailing: Icon(Icons.arrow_right),
                        contentPadding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  NewPage("Buy Boats")));
                        }),
                    ListTile(
                        title: Text('Rent Boats'),
                        // trailing: Icon(Icons.arrow_right),
                        contentPadding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  NewPage("Rent Boats")));
                        }),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Divider(
                    color: Colors.blue.shade50,
                  ),
                  SafeArea(
                    child: ListTile(
                        title: Text('Close'),
                        trailing: Icon(
                          Icons.close,
                          size: 18,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(20, 0, 40, 0),
                        onTap: () {
                          Navigator.pop(context);
                        }),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
