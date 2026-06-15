import 'package:flutter/material.dart';

class SignInCheckbox extends StatefulWidget {
  const SignInCheckbox({super.key});

  @override
  State<SignInCheckbox> createState() => _SignInCheckboxState();
}

class _SignInCheckboxState extends State<SignInCheckbox> {
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
            'Ce souvenir de vous',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontSize: 10),
          ),
          SizedBox(width: 95),
          TextButton(
            onPressed: () {},
            child: Text(
              'Mot De Passe Oublié ?',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 10,
                color: Color(0xFF9708AD),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
