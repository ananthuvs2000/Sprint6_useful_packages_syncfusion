import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion/barcode.dart';
import 'package:syncfusion/calender.dart';
import 'package:syncfusion/chart.dart';
import 'package:syncfusion/demo.dart';
import 'package:syncfusion/pdfviewer.dart';
import 'package:syncfusion/qrcode.dart';
import 'package:syncfusion/rayzorpay.dart';
import 'package:syncfusion/url_launcher.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SynfusionDemo(),
    );
  }
}

class SynfusionDemo extends StatelessWidget {
  const SynfusionDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Synfusion Demo'),
        ),
        body: ListView(
          children: [
            DemoItems(
              listTitle: 'Barcode generator',
              demoRoute: BarcodeScanner(),
            ),
            DemoItems(
              listTitle: 'QRcode generator',
              demoRoute: QRcodeGenerator(),
            ),
            DemoItems(
              listTitle: 'Calender',
              demoRoute: Calendar(),
            ),
            DemoItems(
              listTitle: 'PDF viewer',
              demoRoute: PDFViewer(),
            ),
            DemoItems(
              listTitle: 'Chart',
              demoRoute: ChartDemo(),
            ),

            ElevatedButton(onPressed: () {
              Get.to(Payment());
            }, child: Text('payment')),
            ElevatedButton(onPressed: () {
              Get.to(UrlLauncher());
            }, child: Text('Url launcher'))
          ],
        ));
  }
}