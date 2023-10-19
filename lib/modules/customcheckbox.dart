import 'package:flutter/material.dart';

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
