import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_app/widgets/custom_button.dart';
import 'package:login_app/widgets/custom_icon.dart';
import 'package:login_app/widgets/custom_text_field.dart';
import 'package:login_app/widgets/divider_and_text.dart';

class SginupPage extends StatelessWidget {
  const SginupPage({super.key});

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
                      'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'Courgette',
                      ),
                    ),
                    SizedBox(height: 30),
                    SvgPicture.asset('assets/icons/signup.svg', width: 230),
                    SizedBox(height: 50),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: customTextField(
                        obscureText: false,
                        hint: 'Your Email',
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

                    CustomButton(namePage: '/login', nameButton: 'Sign up'),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an acount?  '),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            ' Log In',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    DividerAndText(),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIcon(SourceImage: 'assets/icons/facebook.svg'),
                        SizedBox(width: 25),
                        CustomIcon(SourceImage: 'assets/icons/twitter.svg'),
                        SizedBox(width: 25),

                        CustomIcon(SourceImage: 'assets/icons/google-plus.svg'),
                      ],
                    ),
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
