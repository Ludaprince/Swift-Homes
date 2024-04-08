// import 'package:flutter/material.dart';

// import 'package:swift_home/screens/list_logs/data.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => MyRegisterPage();
// }

// class MyRegisterPage extends State<RegisterPage> {
//   String? selectGender;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 "Create an account",
//                 style: TextStyle(
//                   fontSize: 34,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const Text(
//                 "Invest and double your income now",
//                 style: TextStyle(
//                   fontSize: 17,
//                   fontWeight: FontWeight.normal,
//                   color: Color.fromRGBO(79, 79, 79, 1),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               SizedBox(
//                 child: ListView.builder(
//                   physics: const NeverScrollableScrollPhysics(),
//                  shrinkWrap: true,
//                   itemCount: template.length,
//                   itemBuilder: (context, int i) {
//                     return Padding(
//                       padding: const EdgeInsets.only(bottom: 16),
//                       child: Column(
//                         children: [
//                           TextFormField(
//                             onTap: () {},
//                             textAlign: TextAlign.start,
//                             decoration: InputDecoration(
//                               isDense: true,
//                               filled: true,
//                               fillColor: Colors.white,
//                               hintText: template[i]["name"],
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               Row(
//                 children: [
//                   const Expanded(
//                     child: Text("Gender"),
//                   ),
//                   Expanded(
//                       child: RadioListTile(
//                     contentPadding: EdgeInsets.zero,
//                     title: const Text("Male"),
//                     value: "Male",
//                     groupValue: selectGender,
//                     onChanged: (value) {
//                       setState(() {
//                         selectGender = value as String;
//                       });
//                       setState(() {
//                         selectGender = value as String;
//                       });
//                     },
//                   )),
//                   Expanded(
//                       child: RadioListTile(
//                     contentPadding: EdgeInsets.zero,
//                     title: const Text("Female"),
//                     value: "Female",
//                     groupValue: selectGender,
//                     onChanged: (value) {
//                       setState(() {
//                         selectGender = value as String;
//                       });
//                       setState(() {
//                         selectGender = value as String;
//                       });
//                     },
//                   )),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
