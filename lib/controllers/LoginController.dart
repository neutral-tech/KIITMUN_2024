import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../models/Delegate.dart';
import '../views/Dashboard.dart';
import '../views/LoginPage.dart';
class Logincontroller extends StatelessWidget {
  const Logincontroller({super.key});
  Future<bool> isLoggedIn() async{
    var box=Hive.box('sessionBox');
    final token=box.get('jwt');
    if(token!=null && !JwtDecoder.isExpired(token)){
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: isLoggedIn(),
      builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return const CircularProgressIndicator();
        }
        else if(snapshot.hasData && snapshot.data==true){
          var box=Hive.box('sessionBox');
          //await Hive.openBox('sessionBox');
          final token=box.get('jwt');
          Map<String,dynamic> decodedToken=JwtDecoder.decode(token);
          Delegate delegate=Delegate(
              name: decodedToken['name'],
              college: decodedToken['college'],
              committee: decodedToken['commitee']['name'],
              id: decodedToken['id'],
              abbr: decodedToken['commitee']['abbr'],
              location: decodedToken['commitee']['location']
          );
          return Dashboard(
            delegate: delegate,
          );
        }
        else{
          return LoginPage();
        }
      },
    );
  }
}
