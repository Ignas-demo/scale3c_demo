import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import 'loading_indicator.dart';


class LoadingOverlayScreen extends StatelessWidget {
  const LoadingOverlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Theme(
        data: Theme.of(context).copyWith(
          cupertinoOverrideTheme:
          const CupertinoThemeData(brightness: Brightness.dark),
        ),
        child: const LoadingIndicator(),
      ),
    );
  }
}
