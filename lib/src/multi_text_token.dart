import 'package:flutter/material.dart';
import 'package:multi_text/src/fast_rich_text/models/symbol_params.dart';

class MultiTextToken extends SymbolParams {
  const MultiTextToken({
    required String symbol,
    TextStyle Function(TextStyle source)? styleBuilder,
    InlineSpan Function(String text, TextStyle style)? spanBuilder,
  }) : super(
          symbolCharacter: symbol,
          style: styleBuilder,
          builder: spanBuilder,
        );
}
