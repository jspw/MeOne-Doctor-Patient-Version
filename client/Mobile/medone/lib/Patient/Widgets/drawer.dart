import 'package:flutter/material.dart';

class DrawerX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10.0),
            // height: 220.0,
            color: Colors.lightBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: new BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.white, spreadRadius: 3),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://res.cloudinary.com/practicaldev/image/fetch/s--q_01llEI--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/293134/b04b975f-2622-4871-9f1f-5e87500ec79a.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Mehedi Hasan Shifat",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      Text("(Patient)"),
                    ],
                  ),
                ),
                // Divider(),
                GestureDetector(
                  child: Container(
                    // margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.indigo),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                  ),
                  onTap: () => Navigator.pushNamed(context, "Profile.route"),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              OptionsBuilder(
                context,
                "FavRestaurants.route",
                "Dashboard",
                Icon(
                  Icons.home,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ),
              OptionsBuilder(
                context,
                "Addresses.route",
                "Appointments",
                Icon(
                  Icons.list,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                // HomeScreenState.center
              ),
              OptionsBuilder(
                context,
                "/help",
                "Prescriptions",
                Icon(
                  Icons.receipt,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ),
              OptionsBuilder(
                context,
                "/help",
                "Medical Records",
                Icon(
                  Icons.healing,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ),
              OptionsBuilder(
                context,
                "/help",
                "Billing",
                Icon(
                  Icons.attach_money,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              OptionsBuilder2(context, "Settings"),
              OptionsBuilder2(context, "Terms & Conditions / Privacy"),
              OptionsBuilder2(context, "Log Out"),
            ],
          ),
        ],
      ),
    );
  }
}

Widget OptionsBuilder(
    BuildContext context, String route, String option, Icon icon,
    [var x]) {
  return InkWell(
    onTap: () => x == null
        ? Navigator.pushNamed(context, route)
        : Navigator.pushNamed(context, route, arguments: [x]),
    hoverColor: Colors.grey,
    splashColor: Colors.blue,
    child: Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15.0),
                child: icon,
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                option,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.navigate_next,
              color: Theme.of(context).accentColor,
            ),
          )
        ],
      ),
    ),
  );
}

Widget OptionsBuilder2(BuildContext context, String option) {
  return InkWell(
    onTap: () => print("object"),
    hoverColor: Colors.grey,
    splashColor: Colors.blue,
    child: Container(
      // color: Colors.blue,
      height: 40.0,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10.0),
      alignment: Alignment.topLeft,
      child: Text(
        option,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
