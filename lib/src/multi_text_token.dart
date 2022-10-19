import 'package:flutter/material.dart';
import 'package:multi_text/src/fast_rich_text/models/symbol_params.dart';

class MultiTextToken extends SymbolParams{
  const MultiTextToken({
    required String symbol,
    TextStyle? textStyle,
    InlineSpan Function(String str)? builder,
  }) : super(
    symbolCharacter: symbol, 
    style: textStyle, 
    builder: builder,
  );

}

