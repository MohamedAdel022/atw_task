import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    super.key,
    this.label,
    required this.onChanged,
  });

  final String? label;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return GlowWrapper(
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter the $label';
          }
          return null;
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff8360F3), width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: 'Enter your $label',
          labelStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
        ),
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}

class GlowWrapper extends StatefulWidget {
  const GlowWrapper({super.key, required this.child});

  final Widget child;

  @override
  State<GlowWrapper> createState() => _GlowWrapperState();
}

class _GlowWrapperState extends State<GlowWrapper> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (focus) {
        setState(() {
          isFocused = focus; // Track focus state
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: isFocused
              ? [
                  BoxShadow(
                    color:
                        const Color(0xff8360F3).withOpacity(0.5), // Purple glow
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ]
              : [], // No shadow when not focused
        ),
        child: widget.child,
      ),
    );
  }
}

class PasswordCustomTextField extends StatefulWidget {
  const PasswordCustomTextField({
    required this.onChanged,
    super.key,
  });
  final Function(String)? onChanged;

  @override
  State<PasswordCustomTextField> createState() =>
      _PasswordCustomTextFieldState();
}

class _PasswordCustomTextFieldState extends State<PasswordCustomTextField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return GlowWrapper(
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter the password';
          }
          //if the password is less than 6 characters show an error
          if (value.length < 6) {
            return 'Password must be at least 6 characters';
          }
          return null;
        },
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          suffix: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.purple, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: 'Enter your password',
          labelStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
        ),
        obscureText: _obscureText,
      ),
    );
  }
}
