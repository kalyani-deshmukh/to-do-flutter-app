import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to \nMicrosoft\'s Todo',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.all(60.0),
                child: Image.asset('asset/images/signin.png'),
                ),
              Text(
                'email or phone num',
                textAlign: TextAlign.center,
              ),
               SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/home');
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                  child: Text(
                    'Continue with google',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                    ),
                ),
              ),
               SizedBox(
                height: 20.0,
              ),
              Text(
                'Sign in with work, school, or \n google account',
                textAlign: TextAlign.center,
              ),
               SizedBox(
                height: 60.0,
              ),
              InkWell(
                onTap: (){},
                child: Text(
                  'Don\'t have google account',
                  textAlign: TextAlign.center,
                   style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
