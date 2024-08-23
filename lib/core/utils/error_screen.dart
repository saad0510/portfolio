import 'package:flutter/material.dart';

import '../extensions/context_ext.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    this.title,
    required this.message,
    this.stackTrace,
  });

  final String? title;
  final String message;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          leading: IconButton(
            onPressed: () => copyToClipboard(context),
            tooltip: 'Copy',
            icon: const Icon(Icons.copy_rounded),
          ),
          actions: const [CloseButton()],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Icon(
                  Icons.error,
                  size: 60,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                title ?? 'Error',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
              if (stackTrace != null) ...[
                const SizedBox(height: 40),
                Text(
                  stackTrace.toString(),
                  style: const TextStyle(color: Colors.red, fontSize: 13),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  void copyToClipboard(BuildContext context) {
    String text = 'Title: $title\n';
    text += 'Message: $message\n';
    if (stackTrace != null) text += 'Stacktrace:\n\n$stackTrace\n';
    text = text.trim();

    context.copyToClipboard('text', message: 'Error has been copied');
  }
}
