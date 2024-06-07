import 'package:flutter/material.dart';

import '../../core/utils/form_validations.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hint,
    required this.label,
    this.leading,
    this.maxLines,
    this.validators = const [FormValidators.optional],
    this.onSaved,
  });

  final String label;
  final String hint;
  final String? leading;
  final int? maxLines;
  final List<FormValidators> validators;
  final void Function(String text)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      keyboardType: validators.last.inputType,
      textCapitalization: validators.last.capitalization,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixText: leading,
      ),
      validator: validators.call,
      onSaved: (x) {
        x = x?.trim() ?? '';
        if (x.isEmpty) return;
        onSaved?.call(x);
      },
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      onEditingComplete: () => FocusManager.instance.primaryFocus?.nextFocus(),
    );
  }
}
