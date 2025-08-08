import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat/domain/constants/appcolors.dart';
import 'package:flutter_chat/domain/constants/cubits/themecubit.dart';
import 'package:flutter_chat/repository/screens/widgets/uihelper.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? AppColors.scaffoldDark
          : AppColors.scaffoldLight,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<ThemeCubit>(context).toggleTheme();
            },
            icon: Icon(CupertinoIcons.paintbrush),
          ),
        ],
        title: UiHelper.customText(
          text: "More",
          fontsize: 18,
          fontweight: FontWeight.bold,
          fontfamily: 'bold',
          context: context,
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: UiHelper.CustomImage(
              imgurl: Theme.of(context).brightness == Brightness.light
                  ? 'profileDark.png'
                  : 'profileLight.png',
            ),
            title: UiHelper.customText(
              text: "Sagar Dhadke",
              fontsize: 16,
              context: context,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
            ),
            subtitle: UiHelper.customText(
              text: "+91 9876543210",
              fontsize: 16,
              context: context,
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: UiHelper.customText(
              text: "Account",
              fontsize: 16,
              context: context,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.chat_bubble),
            title: UiHelper.customText(
              text: "Chats",
              fontsize: 16,
              context: context,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : AppColors.scaffoldDark,
          ),
          ListTile(
            leading: Icon(Icons.format_paint),
            title: UiHelper.customText(
              text: "Appereance",
              fontsize: 16,
              context: context,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.notifications_active),
            title: UiHelper.customText(
              text: "Notification",
              fontsize: 16,
              context: context,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.lock),
            title: UiHelper.customText(
              text: "Privacy",
              fontsize: 16,
              context: context,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.data_usage),
            title: UiHelper.customText(
              text: "Data Usage",
              fontsize: 16,
              context: context,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : AppColors.scaffoldDark,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.question_circle),
            title: UiHelper.customText(
              text: "Help",
              fontsize: 16,
              context: context,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: UiHelper.customText(
              text: "Invite Your Friends",
              fontsize: 16,
              context: context,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
