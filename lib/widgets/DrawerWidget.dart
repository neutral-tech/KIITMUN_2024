import 'package:flutter/material.dart';

import 'WebViewScreen.dart';
class Drawerwidget extends StatefulWidget {
  final bool flag;
  const Drawerwidget({super.key,required this.flag});

  @override
  State<Drawerwidget> createState() => _DrawerwidgetState();
}

class _DrawerwidgetState extends State<Drawerwidget> {
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
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Drawer(
      width: width,
      child: Container(
        color: const Color(0xff000917),
        child: ListView(
          children: [
            SizedBox(
              height: (50/845)*height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: (2/845)*height,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular((8/845)*height),
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  width: (30/390)*width,
                ),
              ],
            ),
            SizedBox(
              height:(120/845)*height ,
            ),
            ListTile(
              onTap: (){
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: (20/845)*height,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              onTap: (){
                if(widget.flag) {
                  Navigator.pushReplacementNamed(context, '/login');
                } else {
                  Navigator.pushNamed(context, '/login');
                }
              },
              title: Text(
                "Dashboard",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: (20/845)*height,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              onTap: (){
                if(widget.flag) {
                  Navigator.pushReplacementNamed(context, '/committees');
                } else {
                  Navigator.pushNamed(context, '/committees');
                }
              },
              title: Text(
                "Committees",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: (20/845)*height,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              onTap: (){
                if(widget.flag) {
                  Navigator.pushReplacementNamed(context, '/gallery');
                } else {
                  Navigator.pushNamed(context, '/gallery');
                }
              },
              title: Text(
                "Gallery",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: (20/845)*height,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              onTap: (){
                _openWebView("https://drive.google.com/file/d/1rnA9cpmS9mgE_wVet14JPHjn_vTcrWyy/view");
              },
              title: Text(
                "Itenaries",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: (20/845)*height,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              onTap: (){
                if(widget.flag) {
                  Navigator.pushReplacementNamed(context, '/about');
                } else {
                  Navigator.pushNamed(context, '/about');
                }
              },
              title: Text(
                "About Us",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: (20/845)*height,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              onTap: (){
                if(widget.flag) {
                  Navigator.pushReplacementNamed(context, '/downloads');
                } else {
                  Navigator.pushNamed(context, '/downloads');
                }
              },
              title: Text(
                "Downloads",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: (20/845)*height,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              onTap: (){
                if(widget.flag) {
                  Navigator.pushReplacementNamed(context, '/credits');
                } else {
                  Navigator.pushNamed(context, '/credits');
                }
              },
              title: Text(
                "Credits",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: (20/845)*height,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
