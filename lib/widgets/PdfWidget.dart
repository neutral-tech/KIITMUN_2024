import 'package:flutter/material.dart';
import 'package:kiitmun_2024/models/PdfModel.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'WebViewScreen.dart';


class Pdfwidget extends StatefulWidget {
  final PdfModel model1, model2;

  const Pdfwidget({super.key, required this.model1, required this.model2});

  @override
  State<Pdfwidget> createState() => _PdfwidgetState();
}

class _PdfwidgetState extends State<Pdfwidget> {
  void _openWebView(String url) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewScreen(url: url),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              _openWebView(widget.model1.url);
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, (20 / 390) * width, 0),
              padding: EdgeInsets.all((10 / 845) * height),
              decoration: BoxDecoration(
                color: const Color(0xff000917),
                borderRadius: BorderRadius.circular((10 / 845) * height),
              ),
              child: Text(
                widget.model1.name,
                style: TextStyle(
                  fontSize: (17 / 845) * height,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              _openWebView(widget.model2.url);
            },
            child: Container(
              margin: EdgeInsets.fromLTRB((20 / 390) * width, 0, 0, 0),
              padding: EdgeInsets.all((10 / 845) * height),
              decoration: BoxDecoration(
                color: const Color(0xff000917),
                borderRadius: BorderRadius.circular((10 / 845) * height),
              ),
              child: Text(
                widget.model2.name,
                style: TextStyle(
                  fontSize: (17 / 845) * height,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
  }
}