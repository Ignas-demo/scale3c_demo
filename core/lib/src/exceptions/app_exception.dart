import '../../core.dart';

part 'app_exception_code.dart';

class AppException implements Exception {
  final String? _displayMessage;
  final String? _localizationKey;
  final AppExceptionCode code;
  final List<String>? _localizationArguments;

  const AppException({
    required this.code,
    String? displayMessage,
    String? localizationKey,
    List<String>? localizationArguments,
  })  : _displayMessage = displayMessage,
        _localizationKey = localizationKey,
        _localizationArguments = localizationArguments;

  const AppException.unknown({
    String? displayMessage,
  })  : _localizationKey = LocaleKeys.common_messages_unknown_error,
        _displayMessage = displayMessage,
        _localizationArguments = null,
        code = AppExceptionCode.unknown;

  String get message => _displayMessage ?? _localizationKey?.tr(args: _localizationArguments) ?? '';

  @override
  String toString() {
    return 'AppException{message: $message, code: $code}';
  }
}