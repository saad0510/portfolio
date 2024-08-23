import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controllers/navigation_controller.dart';
import 'core/extensions/context_ext.dart';
import 'core/utils/error_screen.dart';

class ErrorrLogger implements ProviderObserver {
  const ErrorrLogger();

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {}

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {}

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {}

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    kRootContext.showScreenModal(
      ErrorScreen(
        title: provider.name,
        message: error.toString(),
        stackTrace: stackTrace,
      ),
    );
  }
}
