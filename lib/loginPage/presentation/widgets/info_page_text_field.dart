import 'package:air_travel_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoPageTextField extends StatelessWidget {
  const InfoPageTextField({
    super.key,
    this.icon = "",
    required this.text,
  });

  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: AppColorsTravel.textColor.withValues(
              alpha: 0.1,
            ),
          ),
        ),
        hintText: text,
        fillColor: AppColorsTravel.textColor.withValues(alpha: 0.7),
        labelText: text,
        contentPadding: EdgeInsets.all(20),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            icon,
            fit: BoxFit.cover,
            width: 8,
            height: 12,
            colorFilter: ColorFilter.mode(
              Colors.black,
              BlendMode.srcIn,
            ),
          ),
        ),
        suffixIconConstraints: BoxConstraints(minHeight: 10, minWidth: 8),
        // suffixIcon: SizedBox(
        //   width: 20,
        //   height: 20,
        //   child: Center(
        //     child: SvgPicture.asset(
        //       image,
        //       fit: BoxFit.cover,
        //       width: 10,
        //       height: 8,
        //       colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
        //     ),
        //   ),
        // ),
        suffixIconColor: Colors.black,
        suffixStyle: TextStyle(fontSize: 12),
        hintStyle: TextStyle(
          color: AppColorsTravel.textColor.withValues(alpha: 0.7),
        ),
      ),
    );
  }
}


// class UserFormScreen extends StatefulWidget {
//   const UserFormScreen({super.key, this.userData});
//
//   final Map<String, String>? userData;
//
//   @override
//   _UserFormScreenState createState() => _UserFormScreenState();
// }
//
// class _UserFormScreenState extends State<UserFormScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _addressController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//
//   String _savedName = '';
//   String _savedEmail = '';
//   String _savedPhone = '';
//   String _savedAddress = '';
//   String _savedPassword = '';
//   bool isPassword = false;
//
//   @override
//   void initState() {
//     super.initState();
//     if (widget.userData != null) {
//       _nameController.text = widget.userData!['name'] ?? '';
//       _phoneController.text = widget.userData!['phone'] ?? '';
//       _addressController.text = widget.userData!['region'] ?? '';
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Form bilan ma'lumotlarni saqlash")),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               _buildTextField("Ismingiz", _nameController),
//               _buildTextField("Email", _emailController),
//               _buildTextField("Telefon raqam", _phoneController, TextInputType.phone),
//               _buildTextField("Manzil", _addressController),
//               _buildTextField("Parol", _passwordController, TextInputType.text, isPassword),
//
//               SizedBox(height: 20),
//
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     setState(() {
//                       _savedName = _nameController.text;
//                       _savedEmail = _emailController.text;
//                       _savedPhone = _phoneController.text;
//                       _savedAddress = _addressController.text;
//                       _savedPassword = _passwordController.text;
//                     });
//                   }
//                 },
//                 child: Text("Ma'lumotlarni saqlash"),
//               ),
//
//               SizedBox(height: 20),
//
//               Text(
//                 "Saqlangan ma'lumotlar:\n"
//                     "Ism: $_savedName\n"
//                     "Email: $_savedEmail\n"
//                     "Telefon: $_savedPhone\n"
//                     "Manzil: $_savedAddress\n"
//                     "Parol: $_savedPassword",
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTextField(String label, TextEditingController controller,
//       [TextInputType keyboardType = TextInputType.text, bool isPassword = false]) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 10),
//       child: TextFormField(
//         controller: controller,
//         keyboardType: keyboardType,
//         obscureText: isPassword,
//         decoration: InputDecoration(
//           labelText: label,
//           border: OutlineInputBorder(),
//         ),
//         validator: (value) {
//           if (value == null || value.isEmpty) {
//             return "$label kiritilishi shart!";
//           }
//           return null;
//         },
//       ),
//     );
//   }
// }
