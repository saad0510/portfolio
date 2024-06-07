import 'package:flutter/material.dart';

enum FormValidators {
  required(
    message: 'This field is required',
    inputType: TextInputType.text,
    capitalization: TextCapitalization.sentences,
  ),
  optional(
    message: '',
    inputType: TextInputType.text,
    capitalization: TextCapitalization.sentences,
  ),
  longInput(
    message: 'Input is too short',
    inputType: TextInputType.text,
    capitalization: TextCapitalization.sentences,
  ),
  integer(
    message: 'Enter a valid number',
    inputType: TextInputType.number,
  ),
  email(
    message: 'Invalid email address',
    inputType: TextInputType.emailAddress,
  ),
  ;

  final String message;
  final TextInputType inputType;
  final TextCapitalization capitalization;

  const FormValidators({
    required this.message,
    required this.inputType,
    this.capitalization = TextCapitalization.none,
  });

  String? call(String? text) {
    if (text == null) return null;
    text = text.trim();
    final validated = validate(text);
    return validated ? null : message;
  }

  static final emailRegex = RegExp(
    r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  );

  bool validate(String text) {
    switch (this) {
      case required:
        return text.isNotEmpty;
      case optional:
        return true;
      case longInput:
        return text.length >= 3;
      case integer:
        return int.tryParse(text) != null;
      case email:
        return emailRegex.hasMatch(text);
    }
  }
}

extension ChainedFormValidationsExt on List<FormValidators> {
  String? call(String? text) {
    String? message;
    for (int i = 0; i < length && message == null; i++) {
      message = this[i].call(text);
    }
    return message;
  }
}
