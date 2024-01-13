import 'package:flutter/material.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/core/extensions/build_context_extensions.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/generated/protos/regionpb.pb.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final TextEditingController _countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 24.0,
      ),
      child: ListView(
        children: [
          Text(
            'Register',
            style: context.textTheme.displayMedium?.copyWith(
              color: AppColors.white,
            ),
          ),
          const SizedSpacer.large(),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: "Email",
            ),
          ),
          const SizedSpacer.medium(),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              labelText: "Username",
            ),
          ),
          const SizedSpacer.medium(),
          TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.key),
              labelText: "Password",
              suffixIcon: IconButton(
                icon: const Icon(Icons.visibility_off_outlined),
                onPressed: () {},
              ),
            ),
          ),
          const SizedSpacer.medium(),
          const TextField(
            decoration: InputDecoration(
              // prefixIcon: Icon(Icons.person),
              labelText: "Name",
            ),
          ),
          const SizedSpacer.medium(),
          const TextField(
            decoration: InputDecoration(
              // prefixIcon: Icon(Icons.person),
              labelText: "Last Name",
            ),
          ),
          const SizedSpacer.medium(),
          DropdownMenu<Country>(
            controller: _countryController,
            enableFilter: true,
            width: MediaQuery.of(context).size.width - 36,
            requestFocusOnTap: true,
            label: const Text("Country"),
            dropdownMenuEntries: [
              DropdownMenuEntry(
                  value: Country(id: 0, name: 'Turkey'), label: "Turkey"),
              DropdownMenuEntry(
                  value: Country(id: 1, name: 'America'), label: "America"),
            ],
          ),
          const SizedSpacer.medium(),
          DropdownMenu<Country>(
            enabled: false,
            // controller: _countryController,
            enableFilter: true,
            width: MediaQuery.of(context).size.width - 36,
            requestFocusOnTap: true,
            label: const Text("Country"),
            dropdownMenuEntries: [
              DropdownMenuEntry(
                  value: Country(id: 0, name: 'Turkey'), label: "Turkey"),
              DropdownMenuEntry(
                  value: Country(id: 1, name: 'America'), label: "America"),
            ],
          ),
          const SizedSpacer.large(),
          ElevatedButton(onPressed: () {}, child: const Text("Sign Up"))
        ],
      ),
    ));
  }
}
