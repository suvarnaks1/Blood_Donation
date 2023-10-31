// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class UpdateDoner extends StatefulWidget {
//   UpdateDoner({super.key});

//   @override
//   State<UpdateDoner> createState() => _UpdateDonerState();
// }

// class _UpdateDonerState extends State<UpdateDoner> {
//   final bloodgroups = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'];
//   String? SelectedGroup;
//   final CollectionReference donor =
//       FirebaseFirestore.instance.collection('donor');
//   TextEditingController donorName = TextEditingController();
//   TextEditingController donerPhone = TextEditingController();

//   void UpdateDoner(docId) async {
//     final data = {
//       'name': donorName.text,
//       'phone': donerPhone.text,
//       'group': SelectedGroup
//     };

//     try {
//       await donor.doc(docId).update(data);
//       Navigator.pop(context); // Go back on success
//     } catch (e) {
//       // Handle update errors.
//       print("Error during update: $e");
//       // You can display an error message to the user here.
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final args =
//         ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

//     donorName.text = args['name'];
//     donerPhone.text = args['phone'];
//     SelectedGroup = args['group'];
//     final docId = args['id'];
//     print('document ID:$docId');

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Update"),
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
//                   label: Text("Phone Number"),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: DropdownButtonFormField(
//                 value: SelectedGroup,
//                 decoration: InputDecoration(label: Text('Select Blood Group')),
//                 items: bloodgroups
//                     .map((e) => DropdownMenuItem(
//                           child: Text(e),
//                           value: e,
//                         ))
//                     .toList(),
//                 onChanged: (val) {
//                   SelectedGroup = val;
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 UpdateDoner(docId);
//               },
//               style: ButtonStyle(
//                 minimumSize:
//                     MaterialStateProperty.all(Size(double.infinity, 50)),
//                 backgroundColor: MaterialStateProperty.all(Colors.red),
//               ),
//               child: Text(
//                 'Update',
//                 style: TextStyle(fontSize: 20),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
