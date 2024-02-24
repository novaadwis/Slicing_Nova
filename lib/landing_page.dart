import 'package:flutter/material.dart';
import 'package:login_signup/login_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAE392),
      body: Container(
        margin: const EdgeInsets.only(top: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'TalkDM',
              style: TextStyle(fontFamily: 'Hurricane', fontSize: 80),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/image1.png'),
                Transform.translate(
                  offset: const Offset(
                    -20,
                    -35,
                  ),
                  child: Image.asset(
                    'assets/image2.png',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Let’s talk with new friends',
              style: TextStyle(
                fontFamily: 'IbarraRealNova',
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(
                    50,
                    10,
                    50,
                    10,
                  ),
                  backgroundColor: const Color(0xFF1A5D1A),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontFamily: 'IbarraRealNova',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xFFF1C93B),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
