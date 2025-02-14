import 'package:air_travel_app/loginPage/presentation/widgets/textbox.dart';
import 'package:air_travel_app/utils/constants.dart';
import 'package:flutter/material.dart';

class ButtonCore extends StatelessWidget {
  const ButtonCore({
    super.key,
    required this.text,
    required this.callback,
  });
final  String text;
final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(380, 58),
        alignment: Alignment.center,
        backgroundColor: AppColorsTravel.iconColors,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Textbox(
        text: text,
        size: 16,
        color: Colors.white,
        weight: FontWeight.bold,
      ),
    );
  }
}
