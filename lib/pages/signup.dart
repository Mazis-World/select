import 'package:flutter/material.dart';

import '../utils/colors.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isFirstView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      _isFirstView ? 'Select, Welcome' : 'Enter Your Card Information',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    _isFirstView
                        ? Column(
                      children: [
                        // User information input fields
                        buildTextField('Username', 'Username'),
                        buildTextField('Email', 'Email'),
                        buildTextField('Password', 'Password'),
                      ],
                    )
                        : Column(
                      children: [
                        // Card details input fields
                        buildTextField('Card Number', 'Card Number'),
                        Row(
                          children: [
                            Expanded(
                              child: buildTextField('Expiry Date (MM/YY)', 'Expiry Date (MM/YY)'),
                            ),
                            Expanded(
                              child: buildTextField('CVC', 'CVC'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isFirstView=!_isFirstView;
                        });
                      },
                      child: Text(
                        _isFirstView ? 'Join Select' : 'Process Payment',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        // Handle navigation to the login page here
                      },
                      child: Text(
                        'Already a member? Login to Select',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
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

  Widget buildTextField(String labelText, String hintText, {bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        style: TextStyle(color: AppColors.backgroundColor),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.backgroundColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.backgroundColor),
          ),
        ),
        cursorColor: Colors.white, // Add this line
      ),
    );
  }
}

