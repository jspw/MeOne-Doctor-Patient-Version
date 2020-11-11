import 'package:flutter/material.dart';
import '../Widgets/secondaryAppbar.dart';

class DoctorsSuggest extends StatelessWidget {
  static const route = "/doctors-suggest";

  List<Map<String, String>> doctors = [
    {
      "name": "Dr. Autul Rahman",
      "degree": "MBBS,DPM(Dublin),MRC(UK),FRCP(Edin)",
      "location": "Sylhet",
      "designation": "Psychiatrist",
      "hospital": "SUST Medical Collage Hospital",
    },
    {
      "name": "Dr. Kafi Ullah Dey",
      "degree": "MBBS, DPM(Hululu), MKR(Barlin), FRCP(Boom)",
      "location": "Dhaka",
      "designation": "Psychiatrist",
      "hospital": "BUET Medical Hospital Pvt Ltd",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final String symptom = routeArgs['symptom'];

    return Scaffold(
      appBar: PreferredSize(
        child: SecondaryAppBar(symptom, "এই বিষয়ে বিশেষজ্ঞ ডাক্তারদের লিস্ট"),
        preferredSize: Size(MediaQuery.of(context).size.width, 130),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: doctors.length,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(doctors[index]["name"],style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600

                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(doctors[index]["degree"],style: TextStyle(
                      fontSize: 18.0,
                      
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(doctors[index]["location"],style: TextStyle(
                      fontSize: 18.0,
                      
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(doctors[index]["designation"],style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blue
                      
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(doctors[index]["hospital"],style: TextStyle(
                      fontSize: 18.0,
                      
                    )),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
