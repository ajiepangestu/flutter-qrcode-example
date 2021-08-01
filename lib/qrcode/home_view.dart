import 'package:flutter/material.dart';
import 'package:flutter_qrcode_example/qrcode/qrcode_generator_page.dart';
import 'package:flutter_qrcode_example/qrcode/qrcode_scanner_page.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
    return PageView(
      controller: _pageController,
      onPageChanged: (currentIndex) {
        setState(() {
          _selectedIndex = currentIndex;
        });
      },
      children: [
        QrcodeScannerPage(),
        QrcodeGeneratorPage(),
      ],
    );
  }
}
