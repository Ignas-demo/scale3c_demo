import 'package:flutter/material.dart';

import '../../core_ui.dart';
import 'buttons/app_back_button.dart';

class AppScaffold extends StatelessWidget {
  static const double _leadingWidth = 80.0;
  static const double _toolbarHeight = 80.0;
  static const int _titleMaxLines = 2;

  final String? title;
  final Widget? body;
  final Widget? floatingActionButton;
  final Widget? drawer;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  final bool useSafeArea;

  const AppScaffold({
    super.key,
    this.title,
    this.body,
    this.floatingActionButton,
    this.drawer,
    this.automaticallyImplyLeading = true,
    this.actions,
    this.useSafeArea = true,
  });

  @override
  Widget build(BuildContext context) {
    final body = this.body;
    final title = this.title;
    final canPop =
        automaticallyImplyLeading && (ModalRoute.of(context)?.canPop ?? false);
    final needsAppBar = title != null || canPop;

    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: needsAppBar
            ? AppBar(
          title: title != null
              ? Text(
            title,
            maxLines: _titleMaxLines,
          )
              : null,
          leading: canPop
              ? const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: AppBackButton(),
            ),
          )
              : null,
          leadingWidth: _leadingWidth,
          toolbarHeight: _toolbarHeight,
          centerTitle: canPop,
          titleSpacing: 30,
          actions: actions,
        )
            : null,
        body: body != null
            ? useSafeArea
            ? SafeArea(child: body)
            : body
            : null,
        drawer: drawer,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
