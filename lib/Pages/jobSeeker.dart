import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class jobSeeker extends StatefulWidget {
  const jobSeeker({super.key});

  @override
  State<jobSeeker> createState() => _jobSeekerState();
}

class _jobSeekerState extends State<jobSeeker> {
  bool isBookmarked = false;
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.factory_outlined,
                        size: 30,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "JobSeeker",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Text("")),
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
                Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 221, 218, 218),
                        child: Icon(
                          Icons.settings_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ).pOnly(left: 30),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 221, 218, 218),
                  child: Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                  ),
                ).px12(),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 221, 218, 218),
                  child: Icon(
                    Icons.person_outline_outlined,
                    color: Colors.black,
                  ),
                ).pOnly(right: 32),
              ],
            ),
          ),
          20.heightBox,
          Container(
            decoration: BoxDecoration(color: Color.fromRGBO(249, 249, 249, 1), border: Border.all(color: Color.fromARGB(42, 0, 0, 0)), borderRadius: BorderRadius.circular(20)),
            width: double.infinity,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(CupertinoIcons.search).pOnly(right: 5),
                    Text(
                      "Java Developer",
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                  width: 2,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined).pOnly(bottom: 5, right: 5),
                    Text(
                      "Felosa Drive",
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                  width: 2,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.badge_rounded).pOnly(bottom: 5, right: 5),
                    Text(
                      "2+ Years Experience",
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                  width: 2,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Salary Range (Month)",
                      style: GoogleFonts.poppins(),
                    ),
                    Text(
                      "\$200 - \$300",
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.search,
                        color: Colors.white,
                      ),
                      Text(
                        "Search",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ).px16(),
          ).px(30),
          20.heightBox,
          Expanded(
            child: Row(
              children: [
                Container(
                  // color: Colors.green,
                  width: 300,
                  // width: MediaQuery.of(context).size.width / 5,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Filters",
                            style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Clear All",
                            style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.bold),
                          ).pOnly(top: 5),
                        ],
                      ),
                      15.heightBox,
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(),
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
                    // color: Colors.blue,
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
                                  style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold),
                                ),
                                10.widthBox,
                                Text(
                                  "Search Result (143)",
                                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                                ).pOnly(bottom: 2),
                              ],
                            ),
                            Text(
                              "Clear All",
                              style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.bold),
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
                                  int numberOfColumns = constraints.maxWidth > 900 ? 4 : (constraints.maxWidth < 600 ? 2 : 3); // Adjust based on screen width
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

class LocationButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final IconData? icon;

  LocationButton({required this.onTap, required this.text, this.icon});

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
                  style: GoogleFonts.poppins(),
                ),
              ],
            ),
          ),
        ),
      ),
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
  bool _showDropdown = false;
  // bool isChecked = false;

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
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14),
              ).pOnly(left: 5),
              Icon(_showDropdown ? Icons.arrow_drop_up : Icons.arrow_drop_down),
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
                    leading: Checkbox(
                      activeColor: Colors.black,
                      value: isCheckedList[index],
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedList[index] = value ?? false;
                        });
                      },
                    ),
                    title: Text(item, style: GoogleFonts.poppins()),
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
            spreadRadius: 1, // Spread radius
            blurRadius: 0, // Blur radius
            offset: Offset(2, 2), // Offset in x and y direction
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
                      Text(
                        widget.jobTitle,
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        widget.jobDescription,
                        style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500, height: 2),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
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
                                          style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.bold),
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
                    borderRadius: BorderRadius.circular(20),
                    onTap: widget.onDetailsTap,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.transparent, border: Border.all()),
                      child: Center(
                        child: Text(
                          "Details",
                          style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: InkWell(
                  onTap: widget.onApplyNowTap,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16),
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    height: 40,
                    child: Center(
                      child: Text(
                        "Apply Now",
                        style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13),
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
