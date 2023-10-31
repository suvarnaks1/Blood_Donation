// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class AddUser extends StatefulWidget {
//   const AddUser({super.key});

//   @override
//   State<AddUser> createState() => _AddUserState();
// }

// class _AddUserState extends State<AddUser> {
//   final bloodgroups = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'];
//   String? SelectedGroup;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final CollectionReference donor =
//       FirebaseFirestore.instance.collection('donor');
//   TextEditingController donorName = TextEditingController();
//   TextEditingController donerPhone = TextEditingController();

//   void addDoner() async {
//     try {
//       await _firestore.collection('donor').add({
//         'name': donorName.text,
//         'phone': donerPhone.text,
//         'group': SelectedGroup
//       }).then((value) => {
//         Navigator.pop(context)
//       });
//     } catch (e) {
//       print(Exception);
//       print('22222222222222222');
//     }
//     // final data = {
//     //   'name': donorName.text,
//     //   'phone': donerPhone.text,
//     //   'group': SelectedGroup
//     // };
//     // donor.add(data);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Add Doners"),
//         backgroundColor: Colors.red,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: donorName,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   label: Text("Doner Name"),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: donerPhone,
//                 keyboardType: TextInputType.number,
//                 maxLength: 10,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   label: Text(" Phone Number"),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: DropdownButtonFormField(
//                   decoration:
//                       InputDecoration(label: Text('Select blood Group')),
//                   items: bloodgroups
//                       .map((e) => DropdownMenuItem(
//                             child: Text(e),
//                             value: e,
//                           ))
//                       .toList(),
//                   onChanged: (val) {
//                     SelectedGroup = val;
//                   }),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   addDoner();
//                 },
//                 style: ButtonStyle(
//                     minimumSize:
//                         MaterialStateProperty.all(Size(double.infinity, 50)),
//                     backgroundColor: MaterialStateProperty.all(Colors.red)),
//                 child: Text(
//                   'Submit',
//                   style: TextStyle(fontSize: 20),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
