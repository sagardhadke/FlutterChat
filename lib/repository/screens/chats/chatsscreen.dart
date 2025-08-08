import 'package:flutter/material.dart';
import 'package:flutter_chat/domain/constants/appcolors.dart';
import 'package:flutter_chat/repository/screens/widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});

  TextEditingController searchController = TextEditingController();

  List<Map<String, dynamic>> userChats = [
    {
      "name": "Sagar Dhadke",
      "msg": "Sure, I’ll send it now.",
      "date": "12:45 PM",
      "msgcount": 2,
      "color": [123, 63, 255],
      "lastSeen": "Online",
    },
    {
      "name": "Aarav Sharma",
      "msg": "Let’s catch up tomorrow.",
      "date": "11:05 AM",
      "msgcount": 0,
      "color": [255, 87, 34],
      "lastSeen": "Last seen 1 hour ago",
    },
    {
      "name": "Priya Deshmukh",
      "msg": "Okay, done.",
      "date": "12:10 PM",
      "msgcount": 1,
      "color": [76, 175, 80],
      "lastSeen": "Last seen 30 minutes ago",
    },
    {
      "name": "Rohan Kapoor",
      "msg": "That was awesome!",
      "date": "Yesterday",
      "msgcount": 0,
      "color": [33, 150, 243],
      "lastSeen": "Yesterday",
    },
    {
      "name": "Ananya Reddy",
      "msg": "I’ll be there in 10.",
      "date": "10:30 AM",
      "msgcount": 3,
      "color": [255, 152, 0],
      "lastSeen": "Last seen 2 hours ago",
    },
    {
      "name": "Vikram Joshi",
      "msg": "Let’s meet at 5?",
      "date": "12:55 PM",
      "msgcount": 4,
      "color": [0, 188, 212],
      "lastSeen": "Online",
    },
    {
      "name": "Neha Verma",
      "msg": "Thanks for the help!",
      "date": "12:20 PM",
      "msgcount": 0,
      "color": [233, 30, 99],
      "lastSeen": "Last seen 10 minutes ago",
    },
    {
      "name": "Karan Singh",
      "msg": "Just reached home.",
      "date": "6:45 AM",
      "msgcount": 1,
      "color": [139, 195, 74],
      "lastSeen": "Last seen 5 hours ago",
    },
    {
      "name": "Sneha Iyer",
      "msg": "Good night!",
      "date": "Yesterday",
      "msgcount": 0,
      "color": [63, 81, 181],
      "lastSeen": "Yesterday",
    },
    {
      "name": "Manish Bhatia",
      "msg": "Are you coming?",
      "date": "12:40 PM",
      "msgcount": 2,
      "color": [0, 150, 136],
      "lastSeen": "Last seen 15 minutes ago",
    },
    {
      "name": "Divya Nair",
      "msg": "Got it, thanks!",
      "date": "1:00 PM",
      "msgcount": 5,
      "color": [255, 193, 7],
      "lastSeen": "Online",
    },
    {
      "name": "Rahul Chatterjee",
      "msg": "Let me know.",
      "date": "9:30 AM",
      "msgcount": 0,
      "color": [121, 85, 72],
      "lastSeen": "Last seen 3 hours ago",
    },
    {
      "name": "Isha Thakur",
      "msg": "See you soon!",
      "date": "Yesterday",
      "msgcount": 0,
      "color": [96, 125, 139],
      "lastSeen": "Yesterday",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? AppColors.scaffoldDark
          : AppColors.scaffoldLight,
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
        scrolledUnderElevation: 0,
        title: UiHelper.customText(
          text: "Chats",
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
          fontfamily: 'bold',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mark_chat_unread_outlined),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
            child: UiHelper.customText(
              text: "Status",
              fontsize: 18,
              context: context,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
            ),
          ),

          Expanded(
            flex: 2,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: userChats.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final userName = userChats[index]['name'] as String;
                final List<int> rgb = userChats[index]['color'];
                final Color color = Color.fromARGB(255, rgb[0], rgb[1], rgb[2]);
                final avtarName = userName
                    .split(' ')
                    .map((e) => e[0])
                    .take(2)
                    .join();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // height: 150,
                    width: 95,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: color,
                          child: Text(
                            avtarName,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          userChats[index]['name'],
                          style: TextStyle(fontSize: 18),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(color: Colors.grey),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
            child: UiHelper.customTextFiled(
              controller: searchController,
              text: "Search",
              textinputype: TextInputType.text,
              context: context,
              iconsData: Icons.search,
            ),
          ),

          SizedBox(height: 10),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
            child: UiHelper.customText(
              text: "Chats",
              fontsize: 18,
              context: context,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            flex: 6,
            child: ListView.builder(
              itemCount: userChats.length,
              reverse: true,
              itemBuilder: (BuildContext context, int index) {
                final userName = userChats[index]['name'] as String;
                final List<int> rgb = userChats[index]['color'];
                final Color color = Color.fromARGB(255, rgb[0], rgb[1], rgb[2]);
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
                            color: userChats[index]['lastSeen'] == 'Online'
                                ? const Color(0xFF00FF08)
                                : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: UiHelper.customText(
                    text: userChats[index]['name'],
                    fontsize: 14,
                    context: context,
                    fontweight: FontWeight.w600,
                  ),
                  subtitle: UiHelper.customText(
                    text: userChats[index]['msg'],
                    fontsize: 12,
                    context: context,
                    color: Color(0XFFADB5BD),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      UiHelper.customText(
                        text: userChats[index]['date'].toString(),
                        fontsize: 10,
                        context: context,
                      ),
                      SizedBox(height: 5),
                      userChats[index]['msgcount'] == 0
                          ? SizedBox.shrink()
                          : CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 12,
                              child: UiHelper.customText(
                                text: userChats[index]['msgcount'].toString(),
                                fontsize: 10,
                                context: context,
                                color: Colors.white,
                              ),
                            ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
