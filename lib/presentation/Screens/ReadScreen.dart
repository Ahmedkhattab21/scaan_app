import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ReadQRScreen extends StatefulWidget {
  const ReadQRScreen({Key? key}) : super(key: key);

  @override
  State<ReadQRScreen> createState() => _ReadQRScreenState();
}

class _ReadQRScreenState extends State<ReadQRScreen> {
  var qrName = "Let's Scan it";

  @override
  Widget build(BuildContext context) {
    final MD = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Scanning QR"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              qrName,
              style: const TextStyle(fontSize: 30, color: Colors.blue),
            ),
            ElevatedButton(
              onPressed: () => ScanQR(),
              child: const Text("Scanner"),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> ScanQR() async {
    try {
      await FlutterBarcodeScanner.scanBarcode(
              "#ff6666", "Cancel", true, ScanMode.QR)
          .then((value) {
        setState(() {
            qrName = value;
        });
      });
    } catch (_) {
      setState(() {
        qrName = "Can't Scanned ";
      });
    }
  }
}
