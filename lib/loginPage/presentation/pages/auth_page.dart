import 'package:air_travel_app/loginPage/presentation/widgets/button_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/textbox.dart';
import '../../../utils/constants.dart';
import '../../../utils/sizes.dart';
import '../widgets/auth_page_app_bar.dart';
import '../widgets/auth_page_svg_picture.dart';
import '../widgets/textfield.dart';

class AuthPage extends StatefulWidget {
   const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController phoneController = TextEditingController();
  String? erormesage="";

  String savedPhoneNumber = "";
 // Saqlangan telefon raqam
  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AuthPageAppBar(
        callback: () { context.go("/info");},
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 63,
          children: [
            Center(
              child: AuthPageSvgPicture(
                callback: () {
                },
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
            Column(
              spacing: 23,
              children: [
                PhoneInputField(authcontroller: phoneController),
                ButtonCore(
                  text: "Ro'yxatdan o'tish",
                  callback: () {
                    context.go("/pincode");
                    if (savedPhoneNumber.isEmpty|| savedPhoneNumber==null){
                      erormesage="bu yer bo'sh";
                    }
                    savedPhoneNumber=phoneController.text;
                    setState(() {});
                    print("bu raqami $savedPhoneNumber");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
