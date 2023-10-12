import 'package:flutter/material.dart';
import 'package:select/colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          colors: [ Colors.black,
            Color.fromRGBO(81, 23, 123, 1),
            Colors.black,], // Adjust the gradient colors
        )),
        child: Center(
          child: Container(
            width: 500,
            padding: EdgeInsets.all(16),
            child: Card(
              color:Colors.black,
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
                      style: TextStyle(color: AppColors.backgroundColor), // Text color
                      decoration: InputDecoration(
                        labelText: 'Username or Email',
                        labelStyle: TextStyle(color: Colors.white), // Label text color
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.backgroundColor), // Border color when not focused
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.backgroundColor), // Border color when focused
                        ),
                      ),
                      cursorColor: Colors.white,
                    ),
                    SizedBox(height: 16),
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: AppColors.backgroundColor), // Text color
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white), // Label text color
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.backgroundColor), // Border color when not focused
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.backgroundColor), // Border color when focused
                        ),
                      ),
                      cursorColor: Colors.white,
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CustomCheckbox(
                              value: false,
                              checkColor: Colors.purple, // Checkmark color
                              onChanged: (value) {},
                            ),
                            Text('Remember me,', style: TextStyle(
                                color: Colors.white
                            ),
                            )],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Forgot your login information?',
                          style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                      primary: AppColors.backgroundColor,
                      onPrimary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 12.0),
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
class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final Color checkColor;

  CustomCheckbox({
    required this.value,
    required this.onChanged,
    required this.checkColor,
  });

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Checkbox(
        fillColor: MaterialStateProperty.all(Colors.white),
        value: _value,
        onChanged: (value) {
          setState(() {
            _value = value!;
            widget.onChanged?.call(value);
          });
        },
        checkColor: widget.checkColor,
      ),
    );
  }
}
