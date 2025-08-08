import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_chat/domain/constants/appcolors.dart';
import 'package:flutter_chat/repository/screens/widgets/uihelper.dart';

class ContactsScreen extends StatelessWidget {
  // const ContactsScreen({super.key});

  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> userContacts = [
    {
      "name": "Sagar Dhadke",
      "lastSeen": "Online",
      "color": [123, 63, 255],
    },
    {
      "name": "Aarav Sharma",
      "lastSeen": "Last seen 1 hour ago",
      "color": [255, 87, 34],
    },
    {
      "name": "Priya Deshmukh",
      "lastSeen": "Last seen 30 minutes ago",
      "color": [76, 175, 80],
    },
    {
      "name": "Rohan Kapoor",
      "lastSeen": "Yesterday",
      "color": [33, 150, 243],
    },
    {
      "name": "Ananya Reddy",
      "lastSeen": "Last seen 2 hours ago",
      "color": [255, 152, 0],
    },
    {
      "name": "Vikram Joshi",
      "lastSeen": "Online",
      "color": [0, 188, 212],
    },
    {
      "name": "Neha Verma",
      "lastSeen": "Last seen 10 minutes ago",
      "color": [233, 30, 99],
    },
    {
      "name": "Karan Singh",
      "lastSeen": "Last seen 5 hours ago",
      "color": [139, 195, 74],
    },
    {
      "name": "Sneha Iyer",
      "lastSeen": "Yesterday",
      "color": [63, 81, 181],
    },
    {
      "name": "Manish Bhatia",
      "lastSeen": "Last seen 15 minutes ago",
      "color": [0, 150, 136],
    },
    {
      "name": "Divya Nair",
      "lastSeen": "Online",
      "color": [255, 193, 7],
    },
    {
      "name": "Rahul Chatterjee",
      "lastSeen": "Last seen 3 hours ago",
      "color": [121, 85, 72],
    },
    {
      "name": "Isha Thakur",
      "lastSeen": "Yesterday",
      "color": [96, 125, 139],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? AppColors.scaffoldDark
          : AppColors.scaffoldLight,
      appBar: AppBar(
        title: UiHelper.customText(
          text: "Contacts",
          fontsize: 18,
          context: context,
        ),
        scrolledUnderElevation: 0,
        actions: [Icon(Icons.add)],
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 5),
            UiHelper.customTextFiled(
              controller: searchController,
              text: "Search",
              textinputype: TextInputType.text,
              context: context,
              iconsData: Icons.search,
            ),
            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: userContacts.length,
                itemBuilder: (BuildContext context, int index) {
                  final userName = userContacts[index]['name'] as String;
                  final List<int> rgb = userContacts[index]['color'];
                  final Color color = Color.fromARGB(
                    255,
                    rgb[0],
                    rgb[1],
                    rgb[2],
                  );
                  final avtarName = userName
                      .split(' ')
                      .map((e) => e[0])
                      .take(2)
                      .join();
                  return ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: color,
                          child: Text(
                            avtarName,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: userContacts[index]['lastSeen'] == 'Online'
                                  ? const Color(0xFF00FF08)
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    title: UiHelper.customText(
                      text: userContacts[index]['name'],
                      fontsize: 14,
                      context: context,
                      fontweight: FontWeight.w600,
                    ),
                    subtitle: UiHelper.customText(
                      text: userContacts[index]['lastSeen'],
                      fontsize: 12,
                      context: context,
                      color: Color(0XFFADB5BD),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
