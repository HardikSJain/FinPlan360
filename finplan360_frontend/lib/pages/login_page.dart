import 'package:finplan360_frontend/components/my_button.dart';
import 'package:finplan360_frontend/pages/home_page.dart';
import 'package:finplan360_frontend/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 25,
                ),
                const Icon(
                  Icons.currency_rupee_rounded,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                //username

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: usernameController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    onSubmitted: (value) => usernameController.text = value,
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                //password

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    onSubmitted: (value) => passwordController.text = value,
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //login button
                MyButton(
                  onTap: () {
                    // login
                    try {} catch (e) {}
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  text: 'Sign In',
                ),

                // Google sign in ???
                // const SizedBox(
                //   height: 50,
                // ),

                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25),
                //   child: Row(
                //     children: [
                //       Expanded(
                //           child: Divider(
                //         color: Colors.grey[400],
                //         thickness: 0.7,
                //       )),
                //       Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 10),
                //         child: Text(
                //           'Or Continue With',
                //           style: TextStyle(color: Colors.grey[700]),
                //         ),
                //       ),
                //       Expanded(
                //           child: Divider(
                //         color: Colors.grey[400],
                //         thickness: 0.7,
                //       )),
                //     ],
                //   ),
                // ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member?'),
                    TextButton(
                      onPressed: () {
                        // register page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      child: const Text('Register Now'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}