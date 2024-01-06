import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:quarterback_flutter/app/widgets/animation/fade_in_intro.dart';

import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Hero(
      //     tag: 'logo',
      //     child: Logo(),
      //   ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 36),
          child: Column(
            children: [
              const Expanded(
                child: SizedBox.shrink(),
              ),
              FadeInIntro(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Find Players and Courts Near You!",
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge
                          ?.copyWith(color: Colors.white, fontSize: 48),
                    ),
                    const SizedSpacer.medium(),
                    Text(
                      "Discover all street basketball players, courts and games at around you. Form a team and climb the regional rankings!",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: AppColors.grey,
                          ),
                    ),
                    const SizedSpacer.large(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: ElevatedButton(
                            onPressed: () => context.go('/auth/register'),
                            child: const Text("Sign Up"),
                          ),
                        ),
                        const SizedSpacer.medium(),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(AppColors.surface),
                            ),
                            onPressed: () => context.go('/auth/login'),
                            child: const Text("Sign In"),
                          ),
                        ),
                      ],
                    ),
                    const SizedSpacer.large(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
