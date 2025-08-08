import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat/domain/constants/appcolors.dart';
import 'package:flutter_chat/domain/constants/cubits/themecubit.dart';
import 'package:flutter_chat/repository/screens/bottomnav/bottomnavigationscreen.dart';
import 'package:flutter_chat/repository/screens/widgets/uihelper.dart';

class ProfileScreen extends StatelessWidget {
  // const ProfileScreen({super.key});
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.customText(
          text: "Your Profile",
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
          fontfamily: 'bold',
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<ThemeCubit>(context).toggleTheme();
            },
            icon: Icon(Icons.dark_mode),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                UiHelper.CustomImage(
                  imgurl: Theme.of(context).brightness == Brightness.dark
                      ? "profileDark.png"
                      : "profileLight.png",
                  height: 100,
                  width: 100,
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Image.asset(
                    Theme.of(context).brightness == Brightness.dark
                        ? "assets/icons/addDark.png"
                        : "assets/icons/addLight.png",
                    width: 25,
                    height: 25,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            UiHelper.customTextFiled(
              controller: firstNameController,
              text: "First Name (Required)",
              textinputype: TextInputType.name,
              context: context,
              iconsData: Icons.person,
            ),
            SizedBox(height: 10),
            UiHelper.customTextFiled(
              controller: lastNameController,
              text: "Last Name (Required)",
              textinputype: TextInputType.name,
              context: context,
              iconsData: CupertinoIcons.person_2,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        buttonName: "Save",
        callback: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const BottomNavScreen();
              },
            ),
            (route) => false,
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
