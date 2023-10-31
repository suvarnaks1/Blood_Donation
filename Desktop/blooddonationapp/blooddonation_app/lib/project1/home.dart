// import 'package:blooddonation_app/signinpage.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import './add.dart';


// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final CollectionReference donor =
//       FirebaseFirestore.instance.collection('donor');

//   void deleteDoner(docid) {
//     donor.doc(docid).delete();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Blood Donation App"),
//           backgroundColor: Color.fromARGB(255, 252, 66, 20),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             //Navigator.pushNamed(context, '/add');
//             Navigator.of(context).pushNamed('/add');
//           },
//           backgroundColor: Color.fromARGB(255, 245, 57, 10),
//           child: Icon(
//             Icons.add,
//             size: 40,
//           ),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//         body: StreamBuilder(
//             stream: donor.orderBy('name').snapshots(),
//             // stream: FirebaseFirestore.instance.collection('donor').snapshots(),
//             builder: (context, AsyncSnapshot snapshot) {
//               print(snapshot.hasData);
//               if (snapshot.hasData) {
//                 return ListView.builder(
//                   itemCount: snapshot.data!.docs.length,
//                   itemBuilder: (context, index) {
//                     final DocumentSnapshot donerSnap =
//                         snapshot.data.docs[index];

//                     return Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Container(
//                         height: 90,
//                         width: 400,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.white,
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Color.fromARGB(255, 92, 51, 37),
//                                   blurRadius: 10,
//                                   spreadRadius: 15)
//                             ]),
//                         // color: Colors.red,

//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 child: CircleAvatar(
//                                   backgroundColor:
//                                       Color.fromARGB(255, 51, 17, 173),
//                                   radius: 30,
//                                   child: Text(
//                                     donerSnap['group'],
//                                     style: TextStyle(fontSize: 23),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   donerSnap['name'] ?? 'name not available',
//                                   style: TextStyle(
//                                       color: Colors.red,
//                                       fontSize: 23,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 Text(
//                                   donerSnap['phone'].toString() ?? 'phone',
//                                   style: TextStyle(
//                                       fontSize: 16, color: Colors.red),
//                                 )
//                               ],
//                             ),
//                             Row(children: [
//                               IconButton(
//                                   onPressed: () {
//                                     Navigator.pushNamed(context, '/Update',
//                                         arguments: {
//                                           'name': donerSnap['name'],
//                                           'phone':
//                                               donerSnap['phone'].toString(),
//                                           'group': donerSnap['group'],
//                                           'id': donerSnap['id'],
//                                         });
//                                   },
//                                   icon: Icon(Icons.edit)),
//                               IconButton(
//                                   onPressed: () {
//                                     print(donerSnap.id);
//                                     Text('ooi');
//                                     deleteDoner(donerSnap.id);
//                                   },
//                                   icon: Icon(Icons.delete)),
//                               ElevatedButton(
//                                   onPressed: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) =>
//                                               const Signinpage()),
//                                     );
//                                   },
//                                   child: Text('signin'))
//                             ])
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               } else {
//                 return Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }
//             }));
//   }
// }
