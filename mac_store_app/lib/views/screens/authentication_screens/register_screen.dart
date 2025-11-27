import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mac_store_app/utils/font_style.dart';
import 'package:mac_store_app/views/screens/authentication_screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Form(
                key: _globalKey,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: 360, // to keep form nicely centered & narrow
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Login Your Account",
                            style: googleTextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontFamily: 'Lato',
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "To Explore the world exclusives",
                            style: googleTextStyle(
                              fontSize: 14,
                              letterSpacing: 0.2,
                              fontFamily: 'Lato',
                            ),
                          ),
                          const SizedBox(height: 20),
                          Image.asset(
                            "assets/images/Illustration.png",
                            width: 200,
                            height: 200,
                          ),
                          const SizedBox(height: 20),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Email",
                              style: googleTextStyle(
                                fontSize: 14,
                                letterSpacing: 0.2,
                                fontFamily: 'Nunito Sans',
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your full name";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              labelText: "Enter Your Full Name",
                              labelStyle: GoogleFonts.getFont(
                                "Nunito Sans",
                                fontSize: 14,
                                letterSpacing: 0.1,
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/icons/email.png",
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'enter your email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              labelText: "Enter Your Email",
                              labelStyle: GoogleFonts.getFont(
                                "Nunito Sans",
                                fontSize: 14,
                                letterSpacing: 0.1,
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/icons/password.png",
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your password";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              labelText: "Enter Your Password",
                              labelStyle: GoogleFonts.getFont(
                                "Nunito Sans",
                                fontSize: 14,
                                letterSpacing: 0.1,
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/icons/password.png",
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                              suffixIcon: const Icon(Icons.visibility),
                            ),
                          ),
                          const SizedBox(height: 24),
                          GestureDetector(
                            onTap: () {
                              if (_globalKey.currentState!.validate()) {
                                print("Correct");
                              } else {
                                print("Wrong");
                              }
                            },
                            child: Container(
                              width: 319,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF102DE1),
                                    Color(0xCC0D6EFF),
                                  ],
                                ),
                              ),
                              child: Stack(
                                clipBehavior: Clip.antiAlias,
                                children: [
                                  Positioned(
                                    left: 278,
                                    top: 19,
                                    child: Opacity(
                                      opacity: 0.5,
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 12,
                                            color: Color(0xFF103DE5),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 260,
                                    top: 29,
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 3),
                                        color: Color(0xFF2141E5),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 311,
                                    top: 36,
                                    child: Opacity(
                                      opacity: 0.3,
                                      child: Container(
                                        width: 5,
                                        height: 5,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            3,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 281,
                                    top: -10,
                                    child: Opacity(
                                      opacity: 0.3,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "Sign Up",
                                      style: googleTextStyle(
                                        fontFamily: "Lato",
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an Account? ",
                                style: googleTextStyle(
                                  fontFamily: "Roboto",
                                  letterSpacing: 1,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return LoginScreen();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign In",
                                  style: googleTextStyle(
                                    fontFamily: "Roboto",
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF103DE5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
