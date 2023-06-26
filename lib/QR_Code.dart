import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

class QRCodeScreen extends StatefulWidget {
  const QRCodeScreen({Key? key}) : super(key: key);

  @override
  _QRCodeScreenState createState() => _QRCodeScreenState();
}

class _QRCodeScreenState extends State<QRCodeScreen> {
  String? _qrcodeData;
  String? _url;

  @override
  void initState() {
    super.initState();
    _fetchQRCodeData();
  }

  Future<void> _fetchQRCodeData() async {
    final response =
        await http.get(Uri.parse('https://example.com/api/qrcode'));
    if (response.statusCode == 200) {
      setState(() {
        final data = jsonDecode(response.body);
        _qrcodeData = data['qrcodeData'];
        _url = data['url'];
      });
    } else {
      throw Exception('Failed to load QR code data');
    }
  }

  void _openURL() async {
    if (_url != null) {
      await launch(_url!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_qrcodeData != null)
              QrImage(
                data: _qrcodeData!,
                version: QrVersions.auto,
                size: 200.0,
              ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _openURL,
              child: const Text('Open Website'),
            ),
          ],
        ),
      ),
    );
  }
}
