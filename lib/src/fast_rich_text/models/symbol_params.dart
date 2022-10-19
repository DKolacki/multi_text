import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SymbolParams extends Equatable {
  final String symbolCharacter;
  final TextStyle? style;
  final InlineSpan Function(String text)? builder; 

  const SymbolParams({
    required this.symbolCharacter,
    this.style,
    this.builder,
  }) : assert(symbolCharacter.length < 2);

  @override
  List<Object> get props => [symbolCharacter];
}
