
// scanner_screen.dart
 import 'package:flutter/material.dart';
 import 'package:mobile_scanner/mobile_scanner.dart';



class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  bool _isScanned = false;
  String? scannedCode;
  Map<String, dynamic>? apiData; 

  Future<void> fetchApiData(String code) async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      apiData = {
        "name": "John Doe",
        "event": "Flutter Workshop",
        "ticket": code,
        "status": "Attended",
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scan QR Code')),
      body: Column(
        children: [
          // Top half for scanner
          Expanded(
            child: Stack(
              children: [
                MobileScanner(
                  onDetect: (BarcodeCapture capture) async {
                    if (_isScanned) return;
                    final barcode = capture.barcodes.first;
                    final String? code = barcode.rawValue;

                    if (code != null) {
                      setState(() {
                        _isScanned = true;
                        scannedCode = code;
                      });

                      // Make API call
                      await fetchApiData(code);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Scanned: $code')),
                      );

                      // Allow scanning again after a delay (optional)
                      Future.delayed(const Duration(seconds: 2), () {
                        setState(() => _isScanned = false);
                      });
                    }
                  },
                ),
               
                Center(
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 30,
                  left: 0,
                  right: 0,
                  child: Text(
                    'Align QR code inside the box',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),

          // Bottom half for displaying API data
          Expanded(
            child: Container(
              color: Colors.black,
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: apiData == null
                  ? const Center(child: Text("No data scanned yet."))
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name: ${apiData!['name']}"),
                        Text("Event: ${apiData!['event']}"),
                        Text("Ticket: ${apiData!['ticket']}"),
                        Text("Status: ${apiData!['status']}"),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

