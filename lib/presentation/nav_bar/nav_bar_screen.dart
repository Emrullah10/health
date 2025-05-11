import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:health/presentation/nav_bar/widgets/custon_nav_bar.dart';

class NavBarScreen extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;
  const NavBarScreen(this.navigationShell, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: null,
      body: navigationShell,
      bottomNavigationBar: CustomBottomNavigation(navigationIndex: navigationShell),
    );
  }
}
