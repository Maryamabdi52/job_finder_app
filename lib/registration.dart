import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/login.dart';

class Registration extends StatefulWidget {
  @override
  RegistrationState createState() => RegistrationState();
}

class RegistrationState extends State<Registration> {
  bool isloading = false;
  RegistrationState();
   TextEditingController email = TextEditingController();
   TextEditingController password = TextEditingController();
   TextEditingController confirm =
      TextEditingController();

  final auth = FirebaseAuth.instance;

  register() async {
    if (password.text!=confirm.text) {
      print('password not match');
    } else {
      try {
        isloading = true;
        setState(() {});
        var response = await auth.createUserWithEmailAndPassword(
            email: email.text,
            password: password.text);
        print('user created');
      } catch (e) {
        print(e);
      }

      isloading = false;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 85),
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 8.0),
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.55),
                    borderRadius: BorderRadius.circular(12.0)),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                      labelText: 'username',
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 8.0),
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.55),
                    borderRadius: BorderRadius.circular(12.0)),
                child: TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'password',
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 8.0),
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.55),
                    borderRadius: BorderRadius.circular(12.0)),
                child: TextField(
                  controller: confirm,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'confirm password',
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 65,
                      margin: EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[900],
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0))),
                        onPressed: () => register(),
                        child: isloading
                            ? CircularProgressIndicator()
                            : Text('Register',
                                style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MyApp())),
                  child: Text(
                    'Go to login screen',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
