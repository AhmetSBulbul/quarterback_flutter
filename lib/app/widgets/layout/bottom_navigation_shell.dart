import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';

class NavigationBarButton extends StatelessWidget {
  // const NavigationBarButton(
  //     {super.key,
  //     required this.title,
  //     this.child,
  //     required this.icon,
  //     required this.route,
  //     required this.isActive});
  final String title;
  final Widget? child;
  final IconData icon;
  final String route;
  final bool isActive;

  const NavigationBarButton.home({super.key, required this.isActive})
      : title = 'Home',
        child = null,
        icon = isActive ? Icons.home : Icons.home_outlined,
        route = '/';

  // fixtures
  const NavigationBarButton.fixtures({super.key, required this.isActive})
      : title = 'Fixtures',
        child = null,
        icon = Icons.format_list_bulleted,
        route = '/fixtures';

  // teams
  const NavigationBarButton.teams({super.key, required this.isActive})
      : title = 'Team',
        child = null,
        icon = isActive ? Icons.shield : Icons.shield_outlined,
        route = '/team';

  // chat
  const NavigationBarButton.chat({super.key, required this.isActive})
      : title = 'Chat',
        child = null,
        icon = isActive ? Icons.chat : Icons.chat_outlined,
        route = '/chat';

  // profile
  const NavigationBarButton.profile({super.key, required this.isActive})
      : title = 'Profile',
        child = null,
        icon = isActive ? Icons.person : Icons.person_outline,
        route = '/me';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go(route),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          child ??
              Icon(icon, color: isActive ? AppColors.primary : AppColors.grey),
          Text(
            title,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: isActive ? AppColors.white : AppColors.grey,
                  fontWeight: isActive ? FontWeight.w800 : null,
                ),
          ),
        ],
      ),
    );
  }
}

class BottomNavigationShell extends StatelessWidget {
  const BottomNavigationShell(
      {super.key, required this.state, required this.child});
  final GoRouterState state;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        color: AppColors.black,
        surfaceTintColor: AppColors.grey,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child:
                    NavigationBarButton.home(isActive: state.fullPath == '/')),
            Expanded(
              child: NavigationBarButton.fixtures(
                  isActive: state.fullPath == '/fixtures'),
            ),
            Expanded(
              child: NavigationBarButton.teams(
                  isActive: state.fullPath == '/team'),
            ),
            Expanded(
              child:
                  NavigationBarButton.chat(isActive: state.fullPath == '/chat'),
            ),
            Expanded(
              child: NavigationBarButton.profile(
                  isActive: state.fullPath == '/me'),
            ),
          ],
        ),
      ),
    );
  }
}
