import 'package:flutter/material.dart';

import 'colors.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Color.fromRGBO(81, 23, 123, 1),
              Colors.black,
            ],
          ),
        ),
        child: Center(
          child: Container(
            width: 500,
            padding: EdgeInsets.all(16),
            child: Card(
              color: Colors.black,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: emailController,
                      style: TextStyle(color: AppColors.backgroundColor),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.backgroundColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.backgroundColor),
                        ),
                      ),
                      cursorColor: Colors.purple,
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      style: TextStyle(color: AppColors.backgroundColor),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.backgroundColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.backgroundColor),
                        ),
                      ),
                      cursorColor: Colors.purple,
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      style: TextStyle(color: AppColors.backgroundColor),
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.backgroundColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.backgroundColor),
                        ),
                      ),
                      cursorColor: Colors.purple,
                    ),
                    SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        // Implement your signup logic here
                        String email = emailController.text;
                        String password = passwordController.text;
                        String confirmPassword = confirmPasswordController.text;

                        if (password == confirmPassword) {
                          // Passwords match, continue with signup
                          print('Email: $email');
                          print('Password: $password');
                        } else {
                          // Passwords do not match, show an error
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Password Mismatch'),
                                content: Text('The entered passwords do not match.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.backgroundColor,
                        onPrimary: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.0,
                          vertical: 12.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}