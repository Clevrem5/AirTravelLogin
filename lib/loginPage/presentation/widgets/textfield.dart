import 'package:air_travel_app/utils/constants.dart';
import 'package:flutter/material.dart';

class PhoneInputField extends StatelessWidget {
   const PhoneInputField({super.key, required this.authcontroller});
  final TextEditingController authcontroller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextField(

        controller: authcontroller,
        keyboardType: TextInputType.phone, // Telefon raqam klaviaturasi
        decoration: InputDecoration(

            filled: true,
            fillColor: AppColorsTravel.textColor.withValues(alpha: 0.1),
            // Hira fon rangi
            hintText: "Telefon raqamingizni kiriting",
            hintStyle: TextStyle(
              color: AppColorsTravel.textColor, // Hira rang
              fontSize: 14,
            ),
            prefixIcon: Icon(Icons.phone, color: Colors.black),
            // Telefon ikonkasi
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), // Yumaloq border
              // borderSide: BorderSide(color: Colors.grey, width: 0.1), // Chegarasi
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.black),
            ),
            ),
      ),
    );
  }
}
