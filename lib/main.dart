import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return const MaterialApp(
			title: "TestApp",
			home: Home()
		);
	}
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

	@override
	State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
	@override
	Widget build(BuildContext context) {
		var myData = Directory("/");
		var myData1 = Directory("/");
		return Scaffold(
			body: Center(
				child: Column(
					children: [
						const SizedBox(
							width: 100,
						),
						Text(myData.path),
						Text(myData1.path),
						ElevatedButton(onPressed: (() async {
						  myData = await getApplicationDocumentsDirectory();
							myData1 = await getApplicationSupportDirectory();
							setState(() {
							});
						}), child: const Text("Get Data"))
					],
				),
			),
		);
	}
}
