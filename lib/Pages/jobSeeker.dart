import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class jobSeeker extends StatefulWidget {
  const jobSeeker({super.key});

  @override
  State<jobSeeker> createState() => _jobSeekerState();
}

class _jobSeekerState extends State<jobSeeker> {
  bool isBookmarked = false;
  RangeValues _values = RangeValues(0.0, 100.0);

  List<Map<String, dynamic>> jobDataList = [
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "We are seeking a highly skilled and experienced Finishing Incharge to join our company.",
      "tags": [
        "Full Time",
        "Mid Level",
      ],
      "iconData": Icons.work,
      "Image": "assets/8.png",
      "containerColor": Color.fromARGB(255, 207, 247, 115),
    },
    {
      "jobTitle": "Java Developer",
      "jobDescription": " Ensure adherence to operational and quality policies and procedures to manage finishing work efficiently and safely and to enable the factory to meet the despatch targets.",
      "tags": [
        "Full Time",
        "Mid Level",
      ],
      "iconData": Icons.work,
      "Image": "assets/1.png",
      "containerColor": Color.fromARGB(255, 129, 251, 219),
    },
    {
      "jobTitle": "Node Js",
      "jobDescription": "Overall responsibility for customer interaction leading to customer delight.",
      "tags": [
        "Internship",
        "Mid Level",
      ],
      "Image": "assets/2.png",
      "containerColor": Color.fromARGB(255, 247, 146, 224), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "Daily counting of stock.Visual Merchandise, Cleanliness of the counter.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/3.png",
      "containerColor": Color.fromARGB(255, 175, 154, 244), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "To be successful in this role, you should have excellent communication and interpersonal skills, as well as a strong understanding of the medical industry.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/4.png",
      "containerColor": Color.fromARGB(255, 250, 197, 153), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "We are looking for Jr Quality Engineer having minimum two years of experience in Quality control.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/5.png",
      "containerColor": Color.fromARGB(255, 116, 238, 238), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "Urgent Hiring for Jr Assistant Engineer- BE Mechanical is must required.- minimum 2 year experience required.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/6.png",
      "containerColor": Color.fromARGB(255, 106, 201, 245), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "We are seeking a dynamic and results-oriented Associate Manager to join our team.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/7.png",
      "containerColor": Color.fromARGB(255, 249, 124, 124), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "We are seeking a highly skilled and experienced Finishing Incharge to join our company.",
      "tags": [
        "Full Time",
        "Mid Level",
      ],
      "iconData": Icons.work,
      "Image": "assets/8.png",
      "containerColor": Color.fromARGB(255, 224, 224, 224),
    },
    {
      "jobTitle": "Java Developer",
      "jobDescription": " Ensure adherence to operational and quality policies and procedures to manage finishing work efficiently and safely and to enable the factory to meet the despatch targets.",
      "tags": [
        "Full Time",
        "Mid Level",
      ],
      "iconData": Icons.work,
      "Image": "assets/1.png",
      "containerColor": Color.fromARGB(255, 217, 255, 245),
    },
    {
      "jobTitle": "Node Js",
      "jobDescription": "Overall responsibility for customer interaction leading to customer delight.",
      "tags": [
        "Internship",
        "Mid Level",
      ],
      "Image": "assets/2.png",
      "containerColor": const Color.fromRGBO(251, 226, 245, 1), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "Daily counting of stock.Visual Merchandise, Cleanliness of the counter.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/3.png",
      "containerColor": const Color.fromRGBO(226, 219, 250, 1), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "To be successful in this role, you should have excellent communication and interpersonal skills, as well as a strong understanding of the medical industry.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/4.png",
      "containerColor": const Color.fromRGBO(255, 234, 217, 1), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "We are looking for Jr Quality Engineer having minimum two years of experience in Quality control.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/5.png",
      "containerColor": Color.fromARGB(255, 238, 255, 217), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "Urgent Hiring for Jr Assistant Engineer- BE Mechanical is must required.- minimum 2 year experience required.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/6.png",
      "containerColor": Color.fromARGB(255, 217, 243, 255), // Example color
    },
    {
      "jobTitle": "Flutter Developer",
      "jobDescription": "We are seeking a dynamic and results-oriented Associate Manager to join our team.",
      "tags": [
        "Part Time",
        "Full Time",
      ],
      "Image": "assets/7.png",
      "containerColor": Color.fromARGB(255, 255, 217, 217), // Example color
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(color: const Color.fromRGBO(248, 248, 248, 1), border: Border.all(color: Color.fromARGB(42, 0, 0, 0))),
            width: double.infinity,
            height: 70,
            child: Row(
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 28),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/fu.png").py12(),
                          Container(
                            child: Center(
                              child: Text(
                                "JobSeeker",
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(child: Text("")),
                screenWidth > 1200
                    ? Row(
                        children: [
                          LocationButton(
                            onTap: () {},
                            text: "Location",
                            icon: Icons.location_on_outlined,
                          ),
                          LocationButton(
                            onTap: () {},
                            text: "Find Job",
                          ),
                          LocationButton(
                            onTap: () {},
                            text: "My Job",
                          ),
                          LocationButton(
                            onTap: () {},
                            text: "Hiring",
                          ),
                          Circle(Color: Color.fromARGB(255, 214, 255, 208), imagePath: "assets/14.png").pOnly(left: 30),
                          Circle(Color: Color.fromARGB(255, 247, 255, 208), imagePath: "assets/10.png").px20(),
                          Circle(Color: Color.fromARGB(255, 255, 208, 208), imagePath: "assets/9.png").pOnly(right: 32)
                        ],
                      )
                    : MenuButton().pOnly(right: 32),
              ],
            ),
          ),
          20.heightBox,
          Container(
            decoration: BoxDecoration(color: Color.fromRGBO(249, 249, 249, 1), border: Border.all(color: Color.fromARGB(42, 0, 0, 0)), borderRadius: BorderRadius.circular(10)),
            width: double.infinity,
            height: 80,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: const Color.fromARGB(74, 0, 0, 0),
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.search).pOnly(right: 5),
                          Text(
                            "Java Developer",
                            style: GoogleFonts.lato(),
                          ),
                        ],
                      ).px32().h(double.infinity),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 2,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: const Color.fromARGB(74, 0, 0, 0),
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined).pOnly(bottom: 5, right: 5),
                          Text(
                            "Felosa Drive",
                            style: GoogleFonts.lato(),
                          ),
                        ],
                      ).px64().h(double.infinity),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 2,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: const Color.fromARGB(74, 0, 0, 0),
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(Icons.badge_rounded).pOnly(bottom: 5, right: 5),
                          Text(
                            "2+ Years Experience",
                            style: GoogleFonts.lato(),
                          ),
                        ],
                      ).px64().h(double.infinity),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 2,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Salary Range (Month)",
                            style: GoogleFonts.lato(),
                          ),
                          50.widthBox,
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              "\$${_values.start.round()} - \$${_values.end.round()}",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      RangeSlider(
                        values: _values,
                        activeColor: Colors.orange,
                        onChanged: (values) {
                          setState(() {
                            _values = values;
                          });
                        },
                        min: 0.0,
                        max: 100.0,
                        divisions: 10,
                      ).wh(300, 20),
                    ],
                  ).px64(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: Colors.white,
                          ),
                          Text(
                            "Search",
                            style: GoogleFonts.lato(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ).px2(),
                ],
              ).px16(),
            ),
          ).px(30),
          20.heightBox,
          Expanded(
            child: Row(
              children: [
                Container(
                  width: screenWidth > 1000 ? 250 : 220,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Filters",
                            style: GoogleFonts.lato(fontSize: screenWidth > 1000 ? 20 : 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Clear All",
                            style: GoogleFonts.lato(fontSize: 10, fontWeight: FontWeight.bold),
                          ).pOnly(top: 5),
                        ],
                      ),
                      15.heightBox,
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(10)
                                // color: Colors.amber,
                                ),
                            child: Column(
                              children: [
                                DropdownWidget(
                                  name: "Job Type",
                                  items: [
                                    "All",
                                    "Full-Time",
                                    "Part-Time",
                                    "Remote",
                                    "Internship",
                                    "Contract",
                                  ],
                                ),
                                Divider().px16(),
                                DropdownWidget(
                                  name: "Work Type",
                                  items: [
                                    "On-Site",
                                    "Remote",
                                    "Hybrid"
                                  ],
                                ),
                                Divider().px16(),
                                DropdownWidget(
                                  name: "Employment Type",
                                  items: [
                                    "On-Site",
                                    "Remote",
                                    "Hybrid"
                                  ],
                                ),
                                Divider().px16(),
                                DropdownWidget(
                                  name: "Job Functions",
                                  items: [
                                    "On-Site",
                                    "Remote",
                                    "Hybrid"
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      15.heightBox
                    ],
                  ),
                ).pOnly(left: 32, right: 20),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Java Developer",
                                  style: GoogleFonts.lato(fontSize: screenWidth > 1000 ? 20 : 18, fontWeight: FontWeight.bold),
                                ),
                                10.widthBox,
                                Text(
                                  "Search Result (143)",
                                  style: GoogleFonts.lato(fontSize: screenWidth > 1000 ? 16 : 12, fontWeight: FontWeight.w500),
                                ).pOnly(bottom: 2),
                              ],
                            ),
                            Text(
                              "Clear All",
                              style: GoogleFonts.lato(fontSize: 10, fontWeight: FontWeight.bold),
                            ).pOnly(bottom: 5, right: 20),
                          ],
                        ),
                        15.heightBox,
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                              // color: Colors.amber,
                              width: double.infinity,
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  int numberOfColumns = constraints.maxWidth > 1200 ? 4 : (constraints.maxWidth < 600 ? 2 : 3); // Adjust based on screen width
                                  int numberOfRows = (jobDataList.length / numberOfColumns).ceil(); //jobData.length  = at 10
                                  return Column(
                                    children: List.generate(numberOfRows, (index) {
                                      return Row(
                                        children: List.generate(numberOfColumns, (columnIndex) {
                                          int dataIndex = index * numberOfColumns + columnIndex;
                                          if (dataIndex < jobDataList.length) {
                                            var jobData = jobDataList[dataIndex];

                                            return Expanded(
                                              child: CustomJobContainer(
                                                containerColor: jobData['containerColor'],
                                                onDetailsTap: () {},
                                                onApplyNowTap: () {},
                                                jobTitle: jobData['jobTitle'],
                                                jobDescription: jobData['jobDescription'],
                                                tags: jobData['tags'],
                                                imageUrl: jobData['Image'], //jobData[dataIndex].tags,
                                              ).pOnly(right: 20, bottom: 20),
                                            );
                                          } else {
                                            return Expanded(child: SizedBox()); // Empty container if there's no data
                                          }
                                        }),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ).pOnly(right: 32),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem(
                onTap: () {},
                child: buildPopUpRow(
                  imagePath: "assets/15.png",
                  text: "Location",
                  Color: Color.fromARGB(255, 194, 253, 186),
                ),
              ),
              PopupMenuItem(
                onTap: () {},
                child: buildPopUpRow(
                  imagePath: "assets/f.png",
                  text: "Find Jobs",
                  Color: Color.fromARGB(255, 192, 195, 251),
                ),
              ),
              PopupMenuItem(
                onTap: () {},
                child: buildPopUpRow(
                  imagePath: "assets/find.png",
                  text: "My Jobs",
                  Color: Color.fromARGB(255, 255, 208, 254),
                ),
              ),
              PopupMenuItem(
                onTap: () {},
                child: buildPopUpRow(
                  imagePath: "assets/hiring.png",
                  text: "Hiring",
                  Color: Color.fromARGB(255, 208, 246, 255),
                ),
              ),
              PopupMenuItem(
                onTap: () {},
                child: buildPopUpRow(
                  imagePath: "assets/14.png",
                  text: "Setting",
                  Color: Color.fromARGB(255, 235, 236, 255),
                ),
              ),
              PopupMenuItem(
                onTap: () {},
                child: buildPopUpRow(
                  imagePath: "assets/10.png",
                  text: "Notification",
                  Color: Color.fromARGB(255, 247, 255, 208),
                ),
              ),
              PopupMenuItem(
                onTap: () {},
                child: buildPopUpRow(
                  imagePath: "assets/9.png",
                  text: "Profile",
                  Color: Color.fromARGB(255, 255, 208, 208),
                ),
              ),
            ],
        child: Icon(Icons.menu));
  }
}

Widget buildPopUpRow({
  required String imagePath,
  required String text,
  required Color Color,
  double iconWidth = 10.0,
  double textWidth = 20.0,
  double height = 50.0,
}) {
  return Row(
    children: [
      SizedBox(width: iconWidth),
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey.shade400,
            width: 1.0,
          ),
        ),
        child: CircleAvatar(
          backgroundColor: Color,
          child: ClipOval(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      SizedBox(width: textWidth),
      Text(
        text,
        style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    ],
  ).h(height);
}

Widget Circle({
  required String imagePath,
  required Color Color,
}) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      splashColor: Colors.black,
      borderRadius: BorderRadius.circular(100),
      onTap: () {},
      child: Stack(children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.transparent,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: CircleAvatar(
            backgroundColor: Color,
            child: ClipOval(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: 1.0,
                  ),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ]),
    ),
  );
}

class LocationButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final IconData? icon;

  LocationButton({required this.text, this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: const Color.fromARGB(132, 0, 0, 0),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          // color: Colors.blue,
          height: double.infinity,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) Icon(icon),
                if (icon != null) SizedBox(width: 8), // Add space between icon and text
                Text(
                  text,
                  style: GoogleFonts.lato(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomJobContainer extends StatefulWidget {
  final VoidCallback onDetailsTap;
  final VoidCallback onApplyNowTap;
  final String jobTitle;
  final String jobDescription;
  final List<String> tags;
  final Color containerColor;
  final String imageUrl;

  CustomJobContainer({
    required this.onDetailsTap,
    required this.onApplyNowTap,
    required this.jobTitle,
    required this.jobDescription,
    required this.tags,
    required this.containerColor,
    required this.imageUrl,
  });

  @override
  State<CustomJobContainer> createState() => _CustomJobContainerState();
}

class _CustomJobContainerState extends State<CustomJobContainer> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            offset: Offset(4, 4), // Offset in x and y direction
            blurRadius: 4, // Blur radius
            spreadRadius: 1, // Spread radius
          ),
        ],
        color: widget.containerColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(40, 0, 0, 0), width: 1),
      ),
      width: 300,
      height: 280,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 1, // Spread radius
                      blurRadius: 0, // Blur radius
                      offset: Offset(3, 3), // Offset in x and y direction
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image.asset(
                      widget.imageUrl,
                      // width: 60,
                      // height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isBookmarked = !isBookmarked;
                  });
                },
                child: Icon(
                  isBookmarked ? Icons.bookmark : Icons.bookmark_border_outlined,
                  size: 30,
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.heightBox,
                      Text(
                        widget.jobTitle,
                        style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      5.heightBox,
                      Expanded(
                        child: Text(
                          widget.jobDescription,
                          style: GoogleFonts.lato(fontSize: 11, fontWeight: FontWeight.w500, height: 2),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                      Container(
                        // color: Colors.amber,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: widget.tags
                                .map((tag) => Container(
                                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: Color.fromARGB(77, 0, 0, 0))),
                                      child: Center(
                                        child: Text(
                                          tag,
                                          style: GoogleFonts.lato(fontSize: 10, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ).pOnly(right: 10))
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          10.heightBox,
          Row(
            children: [
              Expanded(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: widget.onDetailsTap,
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.transparent, border: Border.all()),
                      child: Center(
                        child: Text(
                          "Details",
                          style: GoogleFonts.lato(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: InkWell(
                  onTap: widget.onApplyNowTap,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    height: 35,
                    child: Center(
                      child: Text(
                        "Apply Now",
                        style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ).p(15),
    );
  }
}

class DropdownWidget extends StatefulWidget {
  final String name;
  final List<String> items;

  DropdownWidget({required this.items, required this.name});

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  bool _showDropdown = true;
  List<bool> isCheckedList = [];

  @override
  void initState() {
    super.initState();
    // Initialize isCheckedList with false values based on the length of items
    isCheckedList = List<bool>.filled(widget.items.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          // borderRadius: BorderRadius.circular(10),
          onTap: () {
            setState(() {
              _showDropdown = !_showDropdown;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.name,
                style: GoogleFonts.lato(fontWeight: FontWeight.w600, fontSize: 16),
              ).pOnly(left: 5),
              Icon(
                _showDropdown ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                size: 30,
              ).pOnly(top: 5),
            ],
          ).p(12),
        ),
        Visibility(
          visible: _showDropdown,
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: widget.items.asMap().entries.map((entry) {
                int index = entry.key;
                String item = entry.value;
                return InkWell(
                  onTap: () {
                    setState(() {
                      isCheckedList[index] = !isCheckedList[index];
                    });
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Transform.scale(
                      scale: 0.8,
                      child: Checkbox(
                        activeColor: Colors.black,
                        value: isCheckedList[index],
                        onChanged: (bool? value) {
                          setState(() {
                            isCheckedList[index] = value ?? false;
                          });
                        },
                      ),
                    ),
                    title: Text(item, style: GoogleFonts.lato(fontSize: 14)),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
