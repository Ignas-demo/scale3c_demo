import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

mixin ErrorHelper {
  Never handleException({
    required Object exception,
    StackTrace? stackTrace,
  }) {
    debugPrint('Exception: $exception\n$stackTrace');

    _handleGeneralException(exception: exception);
  }

  Never _handleGeneralException({required Object exception}) {
    if (exception is AppException) throw exception;

    if (exception is PlatformException) {
      throw AppException.unknown(displayMessage: exception.message);
    }

    throw const AppException.unknown();
  }
}