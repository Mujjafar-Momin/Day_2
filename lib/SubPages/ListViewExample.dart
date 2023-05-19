// import 'dart:convert';
//
// import 'package:demo_project/Models/Post.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class ListViewExample extends StatefulWidget {
//   const ListViewExample({Key? key}) : super(key: key);
//
//   @override
//   State<ListViewExample> createState() => _ListViewExampleState();
// }
//
// class _ListViewExampleState extends State<ListViewExample> {
//
//   Future<Post> getPostApi() async {
//     final response = await http.get(
//         Uri.parse('https://webhook.site/207fa131-1ffb-4ea0-9036-5ea3ef8db534'));
//     var data = jsonDecode(response.body.toString());
//
//     if (response.statusCode == 200) {
//       return Post.fromJson(data);
//     } else {
//       return Post.fromJson(data);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//         children: [
//         Expanded(
//         child: FutureBuilder<Post>(
//         future: getPostApi()
//     ,
//     builder:(context,snapshot) {
//     if (snapshot.hasData) {
//     return ListView.builder(
//     shrinkWrap: true,
//     scrollDirection: Axis.vertical,
//     itemCount: snapshot.data!.data!.records!.length,
//     itemBuilder: (context, index) {
//     return Center(child: Text(Hello),);
//     });
//     } else {
//     return const Center(
//     child: CircularProgressIndicator(
//     color: Colors.purple,
//     ),
//     );
//     }
//     })
//     ,
//     )
//     ]
//     ));
//   }
// }
