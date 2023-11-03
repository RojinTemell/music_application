// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/custom_button_widget.dart';
import '../methods/large_text_methods.dart';
import '../mixins/navigator_manager.dart';
import 'signup_page.dart';

class MainPage extends StatelessWidget  with NavigatorManager {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: size.height * 0.3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/spotify.svg',
              width: 80,
              height: 80,
              // ignore: deprecated_member_use
              color: Colors.white,
            ),
            const TextLargeWidget(
              text: ' Rozify',
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.1,
          ),
          child:const Text('Never Lost. Discover New Music.'),
        ),
        CustomBottonWidget(
          title: 'SİGN UP',
          width: size.width * 0.75,
          color:const Color.fromARGB(255, 5, 68, 120), callback: (){
            navigateToWidget(context,SignUpPage());
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: CustomBottonWidget(
            title: 'LOG IN',
            width: size.width * 0.75,
            color: const Color.fromARGB(255, 40, 39, 39), callback: () {  },
          ),
        )
      ],
    ));
  }
}
