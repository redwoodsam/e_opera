// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

import '../../core.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.loading = false,
  });

  final VoidCallback onPressed;
  final bool loading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: const Dimension(7).height,
      width: double.infinity,
      child: FilledButton(
        style: ButtonStyle(
          shadowColor: MaterialStatePropertyAll<Color>(
            Colors.black.withOpacity(0.25),
          ),
          backgroundColor: const MaterialStatePropertyAll<Color>(
            Color(0xFF0D8536),
          ),
          shape: const MaterialStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ),
        onPressed: onPressed,
        child: loading
            ? const CircularProgressIndicator(
                strokeWidth: 1.0,
                color: Colors.white,
              )
            : Text(text.toUpperCase()),
      ),
    );
  }
}
