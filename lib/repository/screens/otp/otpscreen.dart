import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/repository/screens/widgets/uihelper.dart';
import 'package:pinput/pinput.dart';

import '../../../domain/constants/appcolors.dart';

class OtpScreen extends StatelessWidget {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 20,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.otpDarkMode
          : AppColors.otpLightMode,
      borderRadius: BorderRadius.circular(7),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.otpDarkMode
            : AppColors.otpLightMode,
      ),
    );
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
              text: "Enter Code",
              fontsize: 24,
              context: context,
              fontfamily: 'bold',
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 5),
            UiHelper.customText(
              text: "We have sent you an SMS with the code",
              fontsize: 14,
              context: context,
            ),
            UiHelper.customText(
              text: "to +91 9876543210",
              fontsize: 14,
              context: context,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Pinput(
                onCompleted: (value) {},
                autofocus: true,
                controller: otpController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {},
        child: Text(
          "Resend Code",
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.otpTextDark
                : AppColors.otpTextLight,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
