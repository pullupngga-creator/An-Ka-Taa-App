import 'package:flutter/material.dart';

class FormTextField extends StatefulWidget {
  const FormTextField({super.key, required this.hintText});

  final String hintText;

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  // 1. Declare the controller
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    // 2. Clean up the controller when the widget is removed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: 10,
            color: Colors.black.withValues(alpha: 0.5),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
          isDense: true,
        ),
      ),
    );
  }
}
