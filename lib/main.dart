import 'package:flutter/material.dart';
import 'new_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
          primarySwatch: Colors.grey,
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
        //! pop çalışsın diye, context tanımlamak için Builder classı ile wrapladım
        child: Container(
          color: Colors.grey.shade50,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    UserAccountsDrawerHeader(
                      accountName: Text('BurakN.ux'),
                      accountEmail: Text('nevruzoglu@gmail.com'),
                      currentAccountPicture: CircleAvatar(
                          backgroundImage: AssetImage('screens/52828295.jpg')),
                    ),
                    ListTile(
                        title: Text('Buy Boats'),
                        trailing: Icon(Icons.arrow_right),
                        contentPadding: EdgeInsets.fromLTRB(20, 0, 40, 0),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  NewPage("Buy Boats")));
                        }),
                    ListTile(
                        title: Text('Rent Boats'),
                        trailing: Icon(Icons.arrow_right),
                        contentPadding: EdgeInsets.fromLTRB(20, 0, 40, 0),
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
