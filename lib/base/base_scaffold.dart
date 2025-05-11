// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:franco/franco.dart';

class BaseScaffold extends ConsumerWidget {
  final String title;
  final List<Widget> actions;
  final bool showAppBar;
  final Widget? floatingActionButton;
  final Widget? body;
  final bool resizeToAvoidBottomInset;
  final Color? backgroundColor;
  final Widget? leading;
  final bool? centerTitle;
  final TextStyle? titleTextStyle;

  const BaseScaffold({
    super.key,
    this.title = '',
    this.actions = const [],
    this.showAppBar = true,
    this.floatingActionButton,
    this.body,
    this.resizeToAvoidBottomInset = true,
    this.backgroundColor,
    this.leading,
    this.centerTitle = true,
    this.titleTextStyle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar:
          showAppBar
              ? AppBar(
                title: Text(
                  title,
                  style: context.displaySmall
                      .copyWith(fontWeight: FontWeight.bold)
                      .merge(titleTextStyle),
                ),
                actions: actions,
                leading: leading,
                centerTitle: centerTitle,
                bottom: PreferredSize(preferredSize: const Size.fromHeight(1), child: Divider()),
              )
              : null,
      body: body,
      floatingActionButton: floatingActionButton,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: backgroundColor,
    );
  }
}
