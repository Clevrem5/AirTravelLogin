import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants.dart';
import '../widgets/auth_page_app_bar.dart';
import '../widgets/button_core.dart';
import '../widgets/info_page_text_field.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AuthPageAppBar(
        title: "Ma'lumotlarni Kiriting",
        callback: () {
          context.go("/pincode");
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColorsTravel.textColor.withValues(alpha: 0.1),
                  ),
                ),
                Positioned(
                  top: 105,
                  left: 105,
                  child: SizedBox(
                    width: 29,
                    height: 29,
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets2/icons/pen.svg",
                        fit: BoxFit.contain,
                        width: 8,
                        height: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            InfoPageTextField(text: "Ismingiz"),
            InfoPageTextField(text: "Familyangiz"),
            InfoPageTextField(text: "+998 99 919-31-11"),
            InfoPageTextField(
              text: "Viloyatingiz",
              icon: Icon(Icons.circle),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ButtonCore(
                text: "Saqlash",
                callback: () {
                  context.go("/");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
