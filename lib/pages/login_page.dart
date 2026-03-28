import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_app/widgets/custom_button.dart';
import 'package:login_app/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Log In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'Courgette',
                      ),
                    ),
                    SizedBox(height: 50),
                    SvgPicture.asset('assets/icons/login.svg', width: 350),
                    SizedBox(height: 50),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: customTextField(
                        obscureText: false,
                        hint: 'Your Email:',
                        icon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: customTextField(
                        obscureText: true,
                        hint: 'Password:',
                        icon: Icon(Icons.lock),
                      ),
                    ),
                    SizedBox(height: 15),

                    CustomButton(namePage: '/login', nameButton: 'LOGIN'),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have and account ? '),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text(
                            ' Sign up',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),

              Positioned(
                top: 0,
                child: Image.asset('assets/images/main_top.png', width: 100),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/login_bottom.png',
                  width: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
