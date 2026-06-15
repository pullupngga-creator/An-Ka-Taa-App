import 'package:flutter/material.dart';

class SignUpCheckbox extends StatefulWidget {
  const SignUpCheckbox({super.key});

  @override
  State<SignUpCheckbox> createState() => _SignUpCheckboxState();
}

class _SignUpCheckboxState extends State<SignUpCheckbox> {
  // 1. Declare the state variable
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16.0),
            child: Transform.scale(
              scale: 0.8,
              child: Checkbox(
                activeColor: Color(0xFF9708AD),
                checkColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    2,
                  ), // Custom rounded corners
                ),
                side: const BorderSide(
                  color: Colors.grey, // Border color when unchecked
                ),
                // 2. Assign the current state value
                value: _isChecked,
                // 3. Update state when tapped
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue ?? false;
                  });
                },
              ),
            ),
          ),
          Text(
            'J\'accepte les conditions d\'utilisation',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
