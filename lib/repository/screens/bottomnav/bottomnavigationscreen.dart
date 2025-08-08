import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/domain/constants/appcolors.dart';
import 'package:flutter_chat/repository/screens/chats/chatsscreen.dart';
import 'package:flutter_chat/repository/screens/contacts/contactsscreen.dart';
import 'package:flutter_chat/repository/screens/more/morescreen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 1;

  List<Widget> pages = [ContactsScreen(), ChatsScreen(), MoreScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2_alt),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2_fill),
            label: 'Chats',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.iconDarkMode
              : AppColors.iconLightMode,
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.bottomDark
            : AppColors.bottomLight,
      ),
      body: IndexedStack(children: pages, index: currentIndex),
    );
  }
}
