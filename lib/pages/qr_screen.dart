import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScreen extends StatefulWidget {
  @override
  QrScreenState createState() {
    return new QrScreenState();
  }
}
class QrScreenState extends State<QrScreen> {
  String barcode = '';
  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException{
      setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    const id = '1234567890';
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new QrImage(
            data: id,
            version: QrVersions.auto,
            size: 250.0,
          ),
          RaisedButton(
              child: Text('QRを読み込む'),
              elevation: 0.7,
              onPressed: scan,
          ),
          Text(this.barcode)
        ],
      ),
    );
  }
}
