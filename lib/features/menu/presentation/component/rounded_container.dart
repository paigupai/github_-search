import 'package:flutter/material.dart';

///
/// 円角のコンテナ
/// [child]には任意のWidgetを指定する
///
class RoundedContainer extends StatelessWidget {
  const RoundedContainer({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: child,
    );
  }
}
