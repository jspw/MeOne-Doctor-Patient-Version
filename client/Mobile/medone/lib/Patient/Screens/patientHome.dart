import 'package:flutter/material.dart';
import 'package:medone/Patient/Widgets/ads.dart';
import 'package:medone/Patient/Widgets/drawer.dart';
import 'package:medone/Patient/Widgets/featureOptions.dart';

class PatientHome extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static const route = "/patient_home";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.person,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        title: Text(
          "মেডি সেবা",
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () => Navigator.pushNamed(context, "Cart.route"),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Theme.of(context).accentColor,
            child: Ads(),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: FeatureOptions(),
          ),
        ],
      ),
      drawer: DrawerX(),
    );
  }
}
