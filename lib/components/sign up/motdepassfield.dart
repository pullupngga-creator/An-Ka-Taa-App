import 'package:flutter/material.dart';

class MotDePasseField extends StatefulWidget {
  const MotDePasseField({super.key, required this.hintText});

  final String hintText;

  @override
  _MotDePasseFieldState createState() => _MotDePasseFieldState();
}

class _MotDePasseFieldState extends State<MotDePasseField> {
  bool _masquerMotDePasse = true;
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
        obscureText: _masquerMotDePasse, // Masque le texte
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: 10,
            color: Colors.black.withValues(alpha: 0.5),
          ),
          border: InputBorder.none,
          isDense: true,
          suffixIcon: IconButton(
            icon: Icon(
              _masquerMotDePasse ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                _masquerMotDePasse = !_masquerMotDePasse;
              });
            },
          ),
        ),
      ),
    );
  }
}
