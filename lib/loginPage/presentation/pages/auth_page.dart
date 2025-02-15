import 'package:air_travel_app/loginPage/presentation/widgets/button_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants.dart';
import '../../../utils/sizes.dart';
import '../widgets/auth_page_app_bar.dart';
import '../widgets/auth_page_svg_picture.dart';
import '../widgets/textbox.dart';
import '../widgets/textfield.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController phoneController = TextEditingController();
  String? errorMessage = "";

  String savedPhoneNumber = "";

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AuthPageAppBar(
        callback: () {
          context.go("/info");
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 20,
              children: [
                Center(
                  child: AuthPageSvgPicture(
                    callback: () {},
                    svg: "assets2/icons/logo.svg",
                    width: 100 * AppSizes.wRatio,
                    height: 100 * AppSizes.hRatio,
                    filter: Colors.black,
                  ),
                ),
                Center(
                  child: Textbox(
                    text: "Ro'yxatdan O'ting",
                    size: 32,
                    color: AppColorsTravel.textColor,
                    weight: FontWeight.bold,
                  ),
                ),
                Column(spacing: 25,
                  children: [
                    PhoneInputField(authcontroller: phoneController),
                    if (errorMessage != null && errorMessage!.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          errorMessage!,
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                      ),
                    ButtonCore(
                      text: "Ro'yxatdan o'tish",
                      callback: () {
                        if (phoneController.text.length < 13) {
                          setState(() {
                            errorMessage = "Telefon raqami kamida 13 ta raqamdan iborat bo'lishi kerak!";
                          });
                        } else {
                          savedPhoneNumber = phoneController.text;
                          errorMessage = "";
                          setState(() {});
                          print("Bu raqam: $savedPhoneNumber");
                          context.go("/pincode");
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
