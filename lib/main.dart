import 'package:flutter/material.dart';

import 'drafts/instances.dart';
import 'drafts/presenters/list_with_order_by.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drafts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          children: [
            // Center(
            //   child: const Text(
            //     'List of Drafts',
            //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
            ListTile(
              onTap: () async {
                final navigator = Navigator.of(context);
                await listWithOrderByController.getData();
                navigator.push(
                  MaterialPageRoute(
                    builder: (context) => const ListWithOrderBy(),
                  ),
                );
              },
              title: const Center(
                child: Text('Flutter List With Order By Functionality'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
