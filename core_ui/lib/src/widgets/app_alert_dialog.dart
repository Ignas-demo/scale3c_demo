import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class AppAlertDialog extends StatelessWidget {
  final String? title;
  final String? message;
  final Widget? content;
  final bool canPop;
  final List<Widget>? actions;

  const AppAlertDialog({
    super.key,
    this.title,
    this.message,
    this.content,
    this.canPop = false,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => canPop,
      child: Theme(
        data: Theme.of(context).copyWith(
          cupertinoOverrideTheme:
          const CupertinoThemeData(brightness: Brightness.dark),
        ),
        child: kIsWeb || Platform.isAndroid
            ? _MaterialAlertDialog(
          title: Text(title ?? ''),
          content: content ?? Text(message ?? ''),
          actions: actions,
        )
            : _CupertinoAlertDialog(
          title: Text(title ?? ''),
          content: content ?? Text(message ?? ''),
          actions: actions,
        ),
      ),
    );
  }
}

class _CupertinoAlertDialog extends StatelessWidget {
  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;

  const _CupertinoAlertDialog({
    required this.title,
    required this.content,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: title,
      content: content,
      actions: actions ?? [],
    );
  }
}

class _MaterialAlertDialog extends StatelessWidget {
  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;

  const _MaterialAlertDialog({
    required this.title,
    required this.content,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title,
      content: content,
      actions: actions,
    );
  }
}
