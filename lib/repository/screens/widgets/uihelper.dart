import 'package:flutter/material.dart';
import 'package:flutter_chat/domain/constants/appcolors.dart';

class UiHelper {
  static CustomImage({required String imgurl, double? height, double? width}) {
    return Image.asset("assets/images/$imgurl", width: width, height: height);
  }

  static customText({
    required String text,
    required double fontsize,
    String? fontfamily,
    FontWeight? fontweight,
    Color? color,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? 'regular',
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColors.textDarkMode
                : AppColors.textLightMode),
        fontWeight: fontweight ?? FontWeight.normal,
      ),
    );
  }

  static customButton({
    required String buttonName,
    required VoidCallback callback,
    Color? buttonColor,
  }) {
    return SizedBox(
      height: 52,
      width: 327,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonLightMode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'bold',
          ),
        ),
      ),
    );
  }

  static customTextFiled({
    required TextEditingController controller,
    required String text,
    required TextInputType textinputype,
    required BuildContext context,
  }) {
    return Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.containerDarkMode
            : AppColors.containerLightMode,
        borderRadius: BorderRadius.circular(7),
      ),

      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextField(
          controller: controller,
          keyboardType: textinputype,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.hintDarkMode
                  : AppColors.hintLightMode,
              fontSize: 14,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
