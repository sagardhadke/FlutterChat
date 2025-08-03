import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat/domain/constants/appcolors.dart';
import 'package:flutter_chat/domain/constants/cubits/themecubit.dart';
import 'package:flutter_chat/repository/screens/login/loginscreen.dart';
import 'package:flutter_chat/repository/screens/widgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(
              imgurl: Theme.of(context).brightness == Brightness.dark
                  ? 'onboardingDark.png'
                  : 'onboarding.png',
              height: 250,
              width: 250,
            ),
            SizedBox(height: 20),
            UiHelper.customText(
              text: "Connect easily with",
              fontsize: 24,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
              context: context,
            ),
            UiHelper.customText(
              text: "your family and friends",
              fontsize: 24,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
              context: context,
            ),
            UiHelper.customText(
              text: "over countries",
              fontsize: 24,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        buttonName: 'Start Messaging',
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => LoginScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
