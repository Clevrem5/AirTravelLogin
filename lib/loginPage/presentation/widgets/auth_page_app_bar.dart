import 'package:air_travel_app/loginPage/presentation/widgets/textbox.dart';
import 'package:air_travel_app/utils/constants.dart';
import 'package:air_travel_app/utils/sizes.dart';
import 'package:flutter/material.dart';

import 'auth_page_svg_picture.dart';

class AuthPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthPageAppBar({
    super.key,
    this.image = "assets2/icons/back-arrow.svg",
    this.title = "",
    required this.callback,
  });

  final String image, title;
  final VoidCallback callback;

  @override
  Size get preferredSize => Size(double.infinity, 48);

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      leading: SizedBox(
        width: 28 * AppSizes.wRatio,
        height: 28 * AppSizes.hRatio,
        child: Center(
          child: AuthPageSvgPicture(
            callback: callback,
            svg: image,
            width: 16 * AppSizes.wRatio,
            height: 19 * AppSizes.hRatio,
            filter: AppColorsTravel.iconColors,
          ),
        ),
      ),
      title: Textbox(
        text: title,
        size: 24,
        color: AppColorsTravel.textColor,
      ),
    );
  }
}
