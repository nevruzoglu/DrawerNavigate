import 'package:flutter/material.dart';
import 'new_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MyApp());

//* Svg define  -------------------
final String placeIcon = 'assets/beenhere-24px.svg';
final String extraServiceIcon = 'assets/local_cafe-24px.svg';

// --------------------------------------

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
          textTheme: TextTheme(
              body1: TextStyle(fontSize: 18),
              headline: TextStyle(fontSize: 36),
              title: TextStyle(fontSize: 40)),
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
                      padding: EdgeInsets.fromLTRB(40, 10, 80, 10),
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
                        padding: EdgeInsets.fromLTRB(0, 12, 20, 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                    ),
                    ListTile(
                        leading: SvgPicture.asset(
                          placeIcon,
                          color: Colors.grey.shade600,
                        ),
                        title: Text('Destinations',
                            style: Theme.of(context).textTheme.body1
                            // .copyWith(fontWeight: FontWeight.bold), // can add extra style to theme
                            ),
                        // trailing: Icon(Icons.arrow_right),
                        contentPadding: EdgeInsets.fromLTRB(60, 0, 40, 0),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  NewPage("Buy Boats")));
                        }),
                    ListTile(
                        leading: SvgPicture.asset(
                          extraServiceIcon,
                          color: Colors.grey.shade600,
                        ),
                        title: Text(
                          'Extra Services',
                          style: Theme.of(context).textTheme.body1,
                        ),
                        // trailing: Icon(Icons.arrow_right),
                        contentPadding: EdgeInsets.fromLTRB(60, 0, 40, 0),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  NewPage("Rent Boats")));
                        }),
                    ListTile(
                        leading: Icon(Icons.favorite_border),
                        title: Text(
                          'Favorites',
                          style: Theme.of(context).textTheme.body1,
                        ),
                        // trailing: Icon(Icons.arrow_right),
                        contentPadding: EdgeInsets.fromLTRB(60, 0, 40, 0),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  NewPage("Rent Boats")));
                        }),
                    ListTile(
                        leading: Icon(Icons.attach_money),
                        title: Text(
                          'Become Partner',
                          style: Theme.of(context).textTheme.body1,
                        ),
                        // trailing: Icon(Icons.arrow_right),
                        contentPadding: EdgeInsets.fromLTRB(60, 0, 40, 0),
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
                    color: Colors.black,
                  ),
                  ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.grey.shade400,
                      ),
                      title: Text(
                        'Settings',
                        style: Theme.of(context).textTheme.body1,
                      ),
                      contentPadding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      onTap: () {
                        Navigator.pop(context);
                      }),
                  ListTile(
                      leading: Icon(Icons.exit_to_app),
                      title: Text(
                        'Close',
                        style: Theme.of(context).textTheme.body1,
                      ),
                      contentPadding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      onTap: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(height: 40)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
