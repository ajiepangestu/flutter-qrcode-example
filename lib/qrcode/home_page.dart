import 'package:flutter/material.dart';
import 'package:flutter_qrcode_example/qrcode/home_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qrcode Example'),
      ),
      body: HomeView(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Qrcode Scanner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Qrcode Generator',
          ),
        ],
      ),
    );
  }
}
