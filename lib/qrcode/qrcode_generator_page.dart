import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrcodeGeneratorPage extends StatefulWidget {
  @override
  _QrcodeGeneratorPageState createState() => _QrcodeGeneratorPageState();
}

class _QrcodeGeneratorPageState extends State<QrcodeGeneratorPage> {
  late TextEditingController _textEditingController;
  String _qrcodeData = "";

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: TextField(
            controller: _textEditingController,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Qrcode Text',
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _qrcodeData = _textEditingController.text;
            });
          },
          child: Text('Generate'),
        ),
        QrImage(
          data: _qrcodeData,
          version: QrVersions.auto,
          size: 250.0,
        )
      ],
    );
  }
}
