import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../core/core.dart';
import '../../../domain/entities/harvest_params.dart';
import '../../../operator_module.dart';

class QrCodeViewerPage extends StatefulWidget {
  // const CodeViewerPage({Key key}) : super(key: key);

  @override
  State<QrCodeViewerPage> createState() => _QrCodeViewerPageState();
}

class _QrCodeViewerPageState extends State<QrCodeViewerPage> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    // final routeArgs =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Geração do QR Code'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: _buildQrCode(routeArgs.toString(), 300),
              width: 400,
              height: 400,
            ),
            SizedBox(height: 16.0),
            // _buildSubmitButton()
            // TextButton(
            //   style: TextButton.styleFrom(primary: Colors.blue),
            //   onPressed: _returnToHomePage,
            //   child: const Text("Voltar para a tela inicial"),
            // )
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        // Nav.pushNamed(OperatorModule.home);
        Nav.navigate(OperatorModule.home);
        // Nav.navigate(OperatorModule.home);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        'Voltar para página inicial',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildQrCode(String message, double? size) {
    return QrImageView(
      data: message,
      version: QrVersions.auto,
      size: size ?? 200.0,
    );
  }

  void _returnToHomePage() {}
}
