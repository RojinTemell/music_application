import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/features/components/custom_button_widget.dart';
import 'package:music_app/features/components/textfield_widget.dart';
import 'package:music_app/features/constants/color_constants.dart';
import 'package:music_app/features/methods/large_text_methods.dart';
import 'package:music_app/features/mixins/navigator_manager.dart';
import 'package:music_app/features/views/login_page.dart';

class SignUpPage extends StatelessWidget with NavigatorManager{
  const SignUpPage({super.key});
 
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final GlobalKey<FormState>  _formKey =GlobalKey<FormState>();
    final TextEditingController userNameController =TextEditingController();
    final TextEditingController mailController =TextEditingController();
    final TextEditingController passwordController =TextEditingController();
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
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
              hintText: 'user name',
              keyboardType: TextInputType.text, controller: userNameController,
            ),
            TextFieldWidget(
              hintText: 'email address',
              keyboardType: TextInputType.emailAddress, controller: mailController,
            ),
            TextFieldWidget(
              hintText: ' password',
              keyboardType: TextInputType.visiblePassword, controller: passwordController,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomBottonWidget(
                    title: 'CREATE ACCOUNT',
                    width: size.width * 0.5,
                    color: ColorsConstants.blueColor, callback: () {  },
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
                        navigateToWidget(context,const LoginPage());
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: ColorsConstants.blueColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
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
