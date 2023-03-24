import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.highContrastLight()),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('MES FINANCES'),
          ),
          body: Center(
            child: Column(
              children: [
                Text("-236,50€"),
                ElevatedButton(
                    onPressed: () {
                      print('Ajouter paiement pressed');
                    },
                    child: Text('Ajouter paiement')),
                SizedBox(
                  width: 300,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors
                          .grey, // or any other color you want for the placeholder
                      radius: 23, // adjust the radius as needed
                      child: Icon(Icons.person,
                          size: 35,
                          color: Colors
                              .white), // or any other widget you want to show inside the circle
                    ),
                    title: Text('Khalifa'),
                    trailing: Text("-236,50€"),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
