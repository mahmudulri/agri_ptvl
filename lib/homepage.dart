import 'package:agri_ptvl/widgets/homepage/fieldinfo_box.dart';
import 'package:agri_ptvl/widgets/homepage/other_report.dart';
import 'package:agri_ptvl/widgets/homepage/profilebar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "বাংলাদেশ কৃষি মন্ত্রণালয়",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Color(0xff777777),
                  size: 30,
                ),
                SizedBox(
                  width: screenWidth * 0.010,
                ),
                Icon(
                  Icons.notifications_none,
                  color: Color(0xff777777),
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: ProfileBar(),
          ),
          Expanded(
              child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.info,
                      size: 30,
                    ),
                    SizedBox(
                      width: screenWidth * 0.025,
                    ),
                    Text("মাঠ পর্যায়ের তথ্য প্রাদান করুন"),
                  ],
                ),
              ),
              FieldInfoBox(),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  children: [
                    Icon(Icons.info),
                    SizedBox(
                      width: screenWidth * 0.025,
                    ),
                    Text("অনান্য রিপোর্ট"),
                    Spacer(),
                    Text(
                      "সকল রিপোর্ট",
                      style: TextStyle(
                        color: Color(0xff219653),
                      ),
                    ),
                  ],
                ),
              ),
              OtherReport(
                reportTitle: "জাতের রিপোর্ট",
                imageUrl: "assets/images/jater_report.png",
              ),
              OtherReport(
                reportTitle: "হাওর অঞ্চল",
                imageUrl: "assets/images/haour.png",
              ),
              OtherReport(
                reportTitle: "দুর্যোগ ও ক্ষয়ক্ষতি",
                imageUrl: "assets/images/durjog.png",
              ),
              OtherReport(
                reportTitle: "আবাদ লক্ষ্যমাত্রা ও অগ্রগতির প্রতিবেদন",
                imageUrl: "assets/images/graph.png",
              ),
            ],
          ))
        ],
      ),
    ));
  }
}
