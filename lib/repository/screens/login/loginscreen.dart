import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/domain/constants/appcolors.dart';
import 'package:flutter_chat/repository/screens/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  // const LoginScreen({super.key});

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customText(
              text: "Enter Your Phone Number",
              fontsize: 24,
              context: context,
              fontweight: FontWeight.bold,
              fontfamily: 'bold',
            ),
            SizedBox(height: 10),
            UiHelper.customText(
              text: "Please confirm your country code and enter",
              fontsize: 14,
              context: context,
            ),
            UiHelper.customText(
              text: "your phone number",
              fontsize: 14,
              context: context,
            ),
            SizedBox(height: 20),
            UiHelper.customTextFiled(
              controller: phoneController,
              text: "Phone Number",
              textinputype: TextInputType.number,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        buttonName: "Continue",
        callback: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
