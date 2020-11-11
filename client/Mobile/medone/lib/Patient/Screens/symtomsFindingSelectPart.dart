import 'package:flutter/material.dart';
import 'package:medone/Patient/Screens/selectSymtoms.dart';
import 'package:medone/Patient/Widgets/secondaryAppbar.dart';

class SymtomsFindingSelectPart extends StatelessWidget {
  static const route = "/find-symtomps-select-part";

  List<String> bodyParts = [
    "হাত",
    "পা",
    "গলা",
    "নাক",
    "কান",
    "চোখ",
    "চামড়া",
    "দাঁত",
    "পিঠ",
    "বুক",
    "গোপন অঙ্গ",
    "তলপেট",
    "গাইনী",
    "শিশু",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: PreferredSize(
        child: SecondaryAppBar("রোগলক্ষন", "আক্রান্ত অঙ্গ নির্বাচন করুন"),
        preferredSize: Size(MediaQuery.of(context).size.width, 130),
      ),
      body: ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: bodyParts.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, SelectSymtoms.route,
                arguments: {"part": bodyParts[index]}),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  bodyParts[index],
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// "রোগলক্ষন | " + body_part

// রোগলক্ষন

// "আক্রান্ত অঙ্গ নির্বাচন করুন"
