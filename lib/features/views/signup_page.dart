import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/features/components/custom_button_widget.dart';
import 'package:music_app/features/components/textfield_widget.dart';
import 'package:music_app/features/methods/large_text_methods.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.3,
          ),
         const Padding(
            padding:  EdgeInsets.only(left: 50),
            child: Align(
              alignment: Alignment.centerLeft,
              child:  TextLargeWidget(text: 'SIGN UP')),
          ),
          const Padding(
          padding:  EdgeInsets.only(left: 50),
            child: Align(
             alignment: Alignment.centerLeft,
              child:  Text('Never Lost. Discover New Music.')),
          ),
          SizedBox(
            height: size.height * 0.06,
          ),
          TextFieldWidget(
            hintText: 'email address',
            keyboardType: TextInputType.emailAddress,
          ),
          TextFieldWidget(
            hintText: ' password',
            keyboardType: TextInputType.visiblePassword,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomBottonWidget(
                  title: 'CREATE ACCOUNT',
                  width: size.width * 0.5,
                  color: Color.fromARGB(255, 5, 68, 120), callback: () {  },
                ),
                SvgPicture.asset(
                  'assets/spotify.svg',
                  width: 50,
                  height: 50,
                  // ignore: deprecated_member_use
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
