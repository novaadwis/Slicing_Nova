import 'package:flutter/material.dart';
import 'package:login_signup/landing_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) {
        return;
        //Jika fokus pada text field, jangan hilangkan fokus
      }
      textFieldFocusNode.canRequestFocus =
          false; // false fokus jika mengetuk icon eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAE392),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(60, 100, 60, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'SignUp Now',
                  style: TextStyle(
                      color: Color(0xFF1A5D1A),
                      fontFamily: 'IbarraRealNova',
                      fontSize: 32,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: ('Username'),
                    labelStyle: TextStyle(
                        fontFamily: 'IbarraRealNova', color: Colors.black),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF1A5D1A)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF1A5D1A)),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: ('Email'),
                    labelStyle: TextStyle(
                        fontFamily: 'IbarraRealNova', color: Colors.black),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF1A5D1A)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF1A5D1A)),
                    ),
                  ),
                ),
                TextFormField(
                  cursorColor: const Color(0xFF1A5D1A),
                  obscuringCharacter: '*',
                  obscureText: _obscured,
                  decoration: InputDecoration(
                    labelText: ('Password'),
                    labelStyle: const TextStyle(
                        fontFamily: 'IbarraRealNova', color: Colors.black),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF1A5D1A)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF1A5D1A)),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: _toggleObscured,
                      child: Icon(
                        _obscured
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        size: 24,
                        color: const Color(0xFF1A5D1A),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Or login with',
                  style: TextStyle(
                      color: Color(0xFF7D7763),
                      fontFamily: 'IbarraRealNova',
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      backgroundColor: const Color(0xFFFDF4D6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.translate(
                        offset: const Offset(
                          -15,
                          0,
                        ),
                        child: Image.asset('assets/facebook.png'),
                      ),
                      const Text(
                        'Login with Facebook',
                        style: TextStyle(
                            color: Color(0xFF7D7763),
                            fontFamily: 'IbarraRealNova',
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      backgroundColor: const Color(0xFFFDF4D6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.translate(
                        offset: const Offset(
                          -20,
                          0,
                        ),
                        child: Image.asset('assets/google.png'),
                      ),
                      const Text(
                        'Login with Google',
                        style: TextStyle(
                            color: Color(0xFF7D7763),
                            fontFamily: 'IbarraRealNova',
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LandingPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      backgroundColor: const Color(0xFF1A5D1A),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFFF1C93B),
                          fontFamily: 'IbarraRealNova',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
