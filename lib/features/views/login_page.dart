import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/features/components/custom_button_widget.dart';
import 'package:music_app/features/components/textfield_widget.dart';
import 'package:music_app/features/constants/color_constants.dart';
import 'package:music_app/features/methods/large_text_methods.dart';
import 'package:music_app/features/mixins/navigator_manager.dart';
import 'package:music_app/features/views/signup_page.dart';

import 'main_page.dart';

class LoginPage extends StatefulWidget with NavigatorManager {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    TextEditingController mailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final FirebaseAuth _auth = FirebaseAuth.instance;

    Future<void> LoginProcess() async {
      try {
        // ignore: unused_local_variable
        UserCredential userCredential =
            await _auth.signInWithEmailAndPassword(
                email: mailController.text, password: passwordController.text);
        print('kullanıcı  giriş yaptı');
      } catch (e) {
        print(e);
      }
    }

    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.3,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextLargeWidget(text: 'LOGIN')),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Never Lost. Discover New Music.')),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            TextFieldWidget(
              hintText: 'email address',
              keyboardType: TextInputType.emailAddress,
              controller: mailController,
            ),
            TextFieldWidget(
              hintText: ' password',
              visiblePassword: true,
              keyboardType: TextInputType.visiblePassword,
              controller: passwordController,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomBottonWidget(
                    title: 'LOGIN',
                    width: size.width * 0.5,
                    color: ColorsConstants.blueColor,
                    callback: () {
                      if (_formKey.currentState!.validate()) {
                          LoginProcess();
                          widget.navigateToWidget(context,MainPage() );
                        }
                    },
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  const Text("Don't you have account?  "),
                  InkWell(
                      onTap: () {
                        widget.navigateToWidget(context,SignUpPage() );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: ColorsConstants.blueColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
