// import 'package:demo_project/main.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// void main (){
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Example',
//       theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
//           useMaterial3:true
//       ),
//       home: ExampleHome(),
//     );
//   }
// }
//
// class ExampleHome extends StatefulWidget {
//   const ExampleHome({Key? key}) : super(key: key);
//
//   @override
//   State<ExampleHome> createState() => _ExampleHomeState();
// }
//
// class _ExampleHomeState extends State<ExampleHome> {
//   var count=0;
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(title: Text("Login Page"),
//         centerTitle: true,),
//       body: Center(
//         child: Container(
//           child: Column(
//             children: [
//
//               Text("Count: $count"),
//               ElevatedButton(
//                   onPressed: (){
//                     setState(() {
//                       count++;
//                       print(count);
//                     });
//                   }, child:Text(
//                   "Increse count"
//               ) )
//             ],
//           ),
//         ),
//       ),
//     );;
//   }
// }
//
