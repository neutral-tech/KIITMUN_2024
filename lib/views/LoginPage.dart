import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import '../models/Delegate.dart';
import 'Dashboard.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false; // Track loading state

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool _obscureText = false;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: Container(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: Colors.transparent,
          ),
          body: Container(
            color: Colors.transparent,
            margin: EdgeInsets.fromLTRB((16 / 390) * width, 0, (16 / 390) * width, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: (40 / 845) * height),
                  SizedBox(
                    width: (300 / 845) * height,
                    height: (300 / 845) * height,
                    child: CachedNetworkImage(imageUrl: 'https://res.cloudinary.com/drpqitxvg/image/upload/v1736746489/applogo_rxrn0p.jpg', fit: BoxFit.fill),
                  ),
                  SizedBox(height: (20 / 845) * height),
                  TextFormField(
                    controller: _idController,
                    style: TextStyle(color: Colors.white, fontSize: (20 / 845) * height),
                    decoration: InputDecoration(
                      labelText: 'KMID',
                      labelStyle: TextStyle(color: Colors.white, fontSize: (20 / 845) * height),
                      filled: true,
                      fillColor: const Color(0xff000917),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.yellow, width: (2 / 845) * height),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.yellow, width: (2 / 845) * height),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.yellow, width: (2 / 845) * height),
                      ),
                    ),
                  ),
                  SizedBox(height: (20 / 845) * height),
                  TextFormField(
                    controller: _passwordController,
                    style: TextStyle(color: Colors.white, fontSize: (20 / 845) * height),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white, fontSize: (20 / 845) * height),
                      filled: true,
                      fillColor: const Color(0xff000917),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.yellow, width: (2 / 845) * height),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.yellow, width: (2 / 845) * height),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.yellow, width: (2 / 845) * height),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText ? Icons.visibility : Icons.visibility_off,
                          color: Colors.white,
                        ),
                        onPressed: _togglePasswordVisibility,
                      ),
                    ),
                    obscureText: !_obscureText,
                  ),
                  SizedBox(height: (25 / 845) * height),
                  _isLoading // Show button or progress indicator based on loading state
                      ? const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
                  )
                      : ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      padding: EdgeInsets.symmetric(vertical: (10/845)*height, horizontal:(20/390)*width),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular((8/845)*height),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: (20 / 845) * height,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _login() async {
    setState(() {
      _isLoading = true;
    });

    final id = _idController.text;
    final password = _passwordController.text;

    final response = await http.post(
      Uri.parse('https://kiitmun.org/api/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'kmid': id,
        'password': password,
      }),
    );

    setState(() {
      _isLoading = false; // Reset loading state
    });

    if (response.statusCode == 200) {
      final token = jsonDecode(response.body)['token'];
      await Hive.openBox('sessionBox');
      var box = Hive.box('sessionBox');
      await box.put('jwt', token);

      // Decoding
      Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
      Delegate delegate = Delegate(
        name: decodedToken['name'],
        college: decodedToken['college'],
        committee: decodedToken['commitee']['name'],
        id: decodedToken['id'],
        abbr: decodedToken['commitee']['abbr'],
        location: decodedToken['commitee']['location'],
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Dashboard(delegate: delegate)),
      );
    } else {
      final error = jsonDecode(response.body)['error'];
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(error, textAlign: TextAlign.center),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
      ));
    }
  }
}
