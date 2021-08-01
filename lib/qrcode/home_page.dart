import 'package:flutter/material.dart';
import 'package:flutter_qrcode_example/qrcode/qrcode_generator_page.dart';
import 'package:flutter_qrcode_example/qrcode/qrcode_scanner_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qrcode Example'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          QrcodeScannerPage(),
          QrcodeGeneratorPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black45,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavigationBarItem(
            label: 'Qrcode Scanner',
            icon: Icon(
              Icons.qr_code_scanner,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Qrcode Generator',
            icon: Icon(
              Icons.qr_code,
            ),
          ),
        ],
      ),
    );
  }
}
