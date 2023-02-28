import 'package:agri_ptvl/widgets/homepage/fieldinfo_box.dart';
import 'package:agri_ptvl/widgets/homepage/other_report.dart';
import 'package:agri_ptvl/widgets/homepage/profilebar.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var initvalue = 2.obs;

    var isVisiable = false.obs;
    List mycalender = [
      {
        "monthName": "জানুয়ারী",
        "value": "1",
      },
      {
        "monthName": "ফেব্রুয়ারী",
        "value": "1",
      },
      {
        "monthName": "মার্চ",
        "value": "1",
      },
      {
        "monthName": "এপ্রিল",
        "value": "1",
      },
      {
        "monthName": "মে",
        "value": "1",
      },
      {
        "monthName": "জুন",
        "value": "1",
      },
      {
        "monthName": "জুলাই",
        "value": "1",
      },
      {
        "monthName": "আগস্ট",
        "value": "1",
      },
      {
        "monthName": "সেপ্টেম্বর",
        "value": "1",
      },
      {
        "monthName": "অক্টোবর",
        "value": "1",
      },
      {
        "monthName": "নভেম্বর",
        "value": "1",
      },
      {
        "monthName": "ডিসেম্বর",
        "value": "1",
      },
    ];

    int year = 2002;
    int month = initvalue.value;

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    final dayslength = DateUtils.getDaysInMonth(year, initvalue.value);
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
        body: Obx(
          () => Column(
            children: [
              Visibility(
                visible: false,
                child: Text(isVisiable.value.toString()),
              ),
              Container(
                color: Colors.white,
                child: ProfileBar(),
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
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
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
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
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.fileLines,
                        ),
                        Text(
                          "বিগত সময়ের প্রতিবেদন",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              initvalue--;
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                            ),
                          ),
                          Text(mycalender[initvalue.value]["monthName"]
                              .toString()),
                          GestureDetector(
                            onTap: () {
                              initvalue++;
                            },
                            child: Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                          width: screenWidth,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                          ),
                          child: Obx(
                            () => Column(
                              children: [
                                Visibility(
                                  visible: false,
                                  child: Text(isVisiable.value.toString()),
                                ),
                                GridView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: dayslength,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 8,
                                    mainAxisSpacing: 2,
                                    crossAxisSpacing: 2,
                                  ),
                                  itemBuilder: (context, index) {
                                    var dateNumber = index + 1;
                                    return InkWell(
                                      onTap: () {
                                        print(
                                            "Days in current month is $initvalue");
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xff3498db),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "$dateNumber",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  int daysInMonth(DateTime date) => DateTimeRange(
          start: DateTime(date.year, date.month, 1),
          end: DateTime(date.year, date.month + 1))
      .duration
      .inDays;
}
