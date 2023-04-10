import 'package:flutter/material.dart';
import 'package:steniooliv/src/tokens/tokens_text_styles.dart';

class SLabelButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const SLabelButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF121212),
        foregroundColor: const Color(0xFFF2F2F2),
        visualDensity: const VisualDensity(horizontal: 0, vertical: 0),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: STextStyles.h24Bold.copyWith(color: const Color(0xFFF2F2F2)),
          ),
        ],
      ),
    );
  }
}
