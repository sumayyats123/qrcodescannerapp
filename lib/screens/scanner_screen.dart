// scanner_screen.dart
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:scanner/core/constants/colors.dart';
import 'package:scanner/core/constants/styles.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        appBar: AppBar(
          backgroundColor: AppColors.secondaryColor,
          title: Text(
            'Scan QR Code',
            style: Styles.white18w400.copyWith(
              color: AppColors.blackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Column(
          children: [
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

                        await fetchApiData(code);

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Scanned: $code')),
                        );

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
                        border: Border.all(
                          color: AppColors.secondaryColor,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 0,
                    right: 0,
                    child: Text(
                      'Align QR code inside the box',
                      textAlign: TextAlign.center,
                      style: Styles.white14w400.copyWith(color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),

            // Scanned Data Display
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(color: AppColors.blackColor),
                child: apiData == null
                    ? Center(
                        child: Text(
                          "No data scanned yet.",
                          style: Styles.white16w500,
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name: ${apiData!['name']}",
                            style: Styles.white16w500,
                          ),
                          Text(
                            "Event: ${apiData!['event']}",
                            style: Styles.white16w500,
                          ),
                          Text(
                            "Ticket: ${apiData!['ticket']}",
                            style: Styles.white16w500,
                          ),
                          Text(
                            "Status: ${apiData!['status']}",
                            style: Styles.white16w500.copyWith(
                              color: apiData!['status'] == "Attended"
                                  ? Colors.green
                                  : Colors.red,
                            ),
                          ),
                        ],
                      ),
              ),
            ),

            // Back to Dashboard Button
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: CustomElevatedBtn(
            //     height: Dimens.fifty,
            //     width: double.infinity,
            //     onTap: () {
            //       Navigator.pop(context);
            //     },
            //     child: Text(
            //       'Back to Dashboard',
            //       style: Styles.white16w500.copyWith(
            //         color: AppColors.blackColor,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
