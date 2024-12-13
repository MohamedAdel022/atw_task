import 'package:flutter/material.dart';

class CutomButton extends StatelessWidget {
  const CutomButton({
    super.key,
    this.onTap,
    required this.label,
  });
  final VoidCallback? onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xff8360F3),
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
