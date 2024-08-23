import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension NavExtOnContext on BuildContext {
  void pushScreen(Widget screen) {
    Navigator.of(this).push(
      MaterialPageRoute(
        builder: (_) => ProviderScope(child: screen),
      ),
    );
  }

  void showScreenModal(Widget screen) {
    const borderRadius = BorderRadius.vertical(top: Radius.circular(16));
    showModalBottomSheet(
      context: this,
      shape: const RoundedRectangleBorder(borderRadius: borderRadius),
      builder: (_) {
        return ClipRRect(
          borderRadius: borderRadius,
          child: screen,
        );
      },
    );
  }
}

extension WidgetsExtOnContext on BuildContext {
  void showSnackBar({
    required String message,
    Color backgroundColor = Colors.black,
    Color foregroundColor = Colors.white,
  }) {
    ScaffoldMessenger.of(this)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: TextStyle(color: foregroundColor),
            maxLines: 10,
          ),
          duration: const Duration(seconds: 4),
          behavior: SnackBarBehavior.floating,
          backgroundColor: backgroundColor,
        ),
      );
  }
}

extension CopyToClipboardExt on BuildContext {
  Future<void> copyToClipboard(String text, {String? message}) async {
    await Clipboard.setData(ClipboardData(text: text));
    if (mounted && message != null) showSnackBar(message: message);
  }
}
