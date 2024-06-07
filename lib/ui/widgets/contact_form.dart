import 'package:flutter/material.dart';

import '../../core/utils/form_validations.dart';
import '../../theme/sizes.dart';
import 'app_text_field.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const AppTextField(
            label: 'Name',
            hint: 'Full name',
            validators: [
              FormValidators.required,
              FormValidators.longInput,
            ],
          ),
          Sizes.s32.spaceY,
          const AppTextField(
            label: 'E-mail',
            hint: 'you@example.com',
            validators: [
              FormValidators.required,
              FormValidators.email,
            ],
          ),
          Sizes.s32.spaceY,
          const AppTextField(
            label: 'Phone',
            hint: '00000000',
            leading: '+',
            validators: [
              FormValidators.required,
              FormValidators.integer,
            ],
          ),
          Sizes.s32.spaceY,
          const AppTextField(
            label: 'Message',
            hint: 'Optional message',
            maxLines: 5,
          ),
          Sizes.s32.spaceY,
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () => formKey.currentState?.validate(),
              child: const Text('Get Started'),
            ),
          ),
        ],
      ),
    );
  }
}
