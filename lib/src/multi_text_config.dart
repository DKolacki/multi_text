import 'package:flutter/material.dart';
import 'package:multi_text/src/multi_text_scope.dart';
import 'package:multi_text/src/multi_text_token.dart';

class MultiTextConfig {
  MultiTextConfig({
    required this.tokens,
    required this.defaultStyle,
  });

  final List<MultiTextToken> tokens;
  final TextStyle defaultStyle;

  MultiTextConfig copyWith({
    List<MultiTextToken>? tokens,
    TextStyle? defaultStyle,
  }) {
    return MultiTextConfig(
      tokens: tokens ?? this.tokens,
      defaultStyle: defaultStyle ?? this.defaultStyle,
    );
  }

  static MultiTextConfig of(BuildContext context) {
    final MultiTextScope? scope =
        context.dependOnInheritedWidgetOfExactType<MultiTextScope>();

    return scope?.config ??
        MultiTextConfig(
          tokens: [],
          defaultStyle: const TextStyle(),
        );
  }
}

