import 'package:flutter/material.dart';
import 'new_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColor: TargetPlatform.android != null
              ? Colors.red
              : Colors.grey.shade50),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
          elevation: 0,
        ),
        drawer: Builder(
          builder: (context) => Drawer(
            //! pop çalışsın diye, context tanımlamak için Builder classı ile wrapladım
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
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 60, 0),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              NewPage("Buy Boats")));
                    }),
                ListTile(
                    title: Text('Rent Boats'),
                    trailing: Icon(Icons.arrow_right),
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 60, 0),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              NewPage("Rent Boats")));
                    }),
                Divider(
                  height: 40,
                  thickness: 4,
                  color: Colors.red.shade100,
                ),
                ListTile(
                    title: Text('Close'),
                    trailing: Icon(
                      Icons.close,
                      size: 18,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 60, 0),
                    onTap: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
          ),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
