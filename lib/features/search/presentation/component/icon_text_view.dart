import 'package:flutter/material.dart';

/// IconTextView
/// アイコンとテキストを表示するウィジェット
/// [icon] アイコン
/// [text] テキスト
class IconTextView extends StatelessWidget {
  const IconTextView({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 16,
          color: Theme.of(context).colorScheme.primary,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
