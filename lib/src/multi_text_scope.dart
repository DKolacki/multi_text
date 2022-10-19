import 'package:flutter/material.dart';
import 'package:multi_text/src/multi_text_config.dart';

class MultiTextScope extends InheritedWidget {
  const MultiTextScope({
    required Widget child,
    required this.config,
    Key? key,
  }) : super(child: child, key: key);

  final MultiTextConfig config;

  @override
  bool updateShouldNotify(MultiTextScope old) => false;
}

