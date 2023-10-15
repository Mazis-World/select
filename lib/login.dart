import 'package:flutter/material.dart';
import 'package:select/authservice.dart';
import 'package:select/colors.dart';
import 'customcheckbox.dart';

class Login extends StatefulWidget {
  final AuthService authService; // Add this line
  const Login({Key? key, required this.authService}) : super(key: key); // Modify the constructor

  @override
  State<Login> createState() => _LoginState(authService); // Pass authService to _LoginState constructor
}

class _LoginState extends State<Login> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService;

  _LoginState(this.authService);

  Future<void> signIn() async {
    final username = usernameController.text;
    final password = passwordController.text;

    final response = await authService.signIn(username, password);

    if (response.success) {
      print('Sign-in successful');
    } else {
      print('Sign-in failed: ${response.message}');
    }
  }

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
            ], // Adjust the gradient colors
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
                  children: <Widget>[
                    Text(
                      'Welcome to Select',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 24),
                    TextField(
                      style: TextStyle(color: AppColors.backgroundColor),
                      decoration: InputDecoration(
                        labelText: 'Username or Email',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.backgroundColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.backgroundColor),
                        ),
                      ),
                      cursorColor: Colors.white,
                      controller: usernameController, // Add this line
                    ),
                    SizedBox(height: 16),
                    TextField(
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
                      cursorColor: Colors.white,
                      controller: passwordController, // Add this line
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CustomCheckbox(
                              value: false,
                              checkColor: Colors.purple,
                              onChanged: (value) {},
                            ),
                            Text(
                              'Remember me,',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot your login information?',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        signIn();
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
                        'Login',
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
