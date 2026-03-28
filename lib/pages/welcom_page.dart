import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_app/widgets/custom_button.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

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
                      'WELCOME TO EDU',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: 'Courgette',
                      ),
                    ),
                    SizedBox(height: 50),
                    SvgPicture.asset('assets/icons/chat.svg', width: 350),
                    SizedBox(height: 50),

                    CustomButton(
                      namePage: '/login',
                      nameButton: 'LOGIN',
                      horizontal: 80,
                    ),
                    SizedBox(height: 10),
                    CustomButton(
                      namePage: '/signup',
                      nameButton: 'SIGNUP',
                      textColor: Colors.black,
                      horizontal: 77,
                      color: Color.fromARGB(255, 239, 192, 245),
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
                child: Image.asset('assets/images/main_bottom.png', width: 80),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
