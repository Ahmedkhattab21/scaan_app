import 'package:flutter/material.dart';
import 'package:scanner/presentation/Screens/CreateScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scanner ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scanner App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print("creat");
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const CreateQRScreen()),
                );
              },
              child: const Text("Create QR Code "),
            ),
            ElevatedButton(
              onPressed: () {
                print("Read");
              },
              child: const Text("Read QR Code "),
            ),
          ],
        ),
      ),
    );
  }
}
