import 'package:flutter/material.dart';

class CustomerScanSreen extends StatefulWidget {
  //Location Page
  static String routeName = "/customer_ScanQR";

  @override
  State<CustomerScanSreen> createState() => _CustomerScanSreenState();
}

class _CustomerScanSreenState extends State<CustomerScanSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00883C),
        elevation: 4,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/image/Scan.png',
                        width: 300,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
