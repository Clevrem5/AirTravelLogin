import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthPageSvgPicture extends StatelessWidget {
  const AuthPageSvgPicture({
    super.key,

    required this.svg,
    required this.width,
    required this.height,
    required this.filter,
    required this.callback,


  }) ;
final String svg;
final double width,height;
final Color filter;
final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return

      IconButton(onPressed:callback ,
        icon: SvgPicture.asset(
          svg,
          fit: BoxFit.cover,
          width: width,
          height: height,
          colorFilter: ColorFilter.mode(
            filter,
            BlendMode.srcIn,
          ),
        ),
      );

  }
}
