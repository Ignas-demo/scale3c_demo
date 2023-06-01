import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import '../../navigation.dart';

extension AlertDialogNavigation on AppRouter {
  Future<void> showAppDialog({
    String? title,
    String? message,
    List<Widget>? actions,
  }) {
    return push(
      AppAlertDialogRoute(
        title: title,
        message: message,
        actions: actions ?? [OkButton(onPressed: removeLast)],
      ),
    );
  }

  Future<void> showErrorDialog({String? errorText}) {
    return push(
      AppAlertDialogRoute(
        title: LocaleKeys.common_messages_unknown_error.tr(),
        message: errorText,
        actions: [OkButton(onPressed: removeLast)],
      ),
    );
  }
}
