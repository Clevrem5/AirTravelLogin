import 'package:air_travel_app/loginPage/presentation/widgets/auth_page_app_bar.dart';
import 'package:air_travel_app/utils/constants.dart';
import 'package:air_travel_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

import '../widgets/textbox.dart';
import '../widgets/button_core.dart';

class GetSms extends StatelessWidget {
  const GetSms({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return Scaffold(
      appBar: AuthPageAppBar(callback: () {
        context.go("/");
      }),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 137, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Textbox(
                text: "Sms kodini kiriting",
                size: 18,
                color: AppColorsTravel.textColor,
                weight: FontWeight.w400,
              ),
            ),
            Center(
              child: Pinput(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                length: 4,
                showCursor: true,
                keyboardType: TextInputType.number,
                onCompleted: (pin) {
                  print("Bu pincode: $pin");
                },
                obscureText: true,
                obscuringWidget: Icon(
                  Icons.circle,
                  size: 20,
                  color: Colors.black,
                ),
                defaultPinTheme: PinTheme(
                  width: 83,
                  height: 61,
                  textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue, width: 1),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ButtonCore(
                text: "Tasdiqlash",
                callback: () {
                  context.go("/info");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
