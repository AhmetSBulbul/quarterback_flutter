import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/core/extensions/build_context_extensions.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/features/region/bloc/region_bloc.dart';
import 'package:quarterback_flutter/features/region/data/region_repository.dart';
import 'package:quarterback_flutter/generated/protos/regionpb.pb.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  // final TextEditingController _countryController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 24.0,
      ),
      child: BlocProvider(
        create: (context) => RegionBloc(repository: locator<RegionRepository>())
          ..add(const RegionCountryRequested()),
        child: BlocListener<RegionBloc, RegionState>(
          listenWhen: (previous, current) =>
              previous.failure != current.failure && current.failure != null,
          listener: (context, state) {
            // show snackbar
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              // content: Text(state.failure?.cause ?? 'Unknown Error'),
              content:
                  Text(state.failure?.exception.toString() ?? "Unknown Error"),
            ));
          },
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
              BlocBuilder<RegionBloc, RegionState>(
                buildWhen: (previous, current) =>
                    previous.countries != current.countries,
                builder: (context, state) {
                  return DropdownMenu<Country>(
                    enabled: state.countries.isNotEmpty,
                    enableFilter: true,
                    width: MediaQuery.of(context).size.width - 36,
                    requestFocusOnTap: true,
                    label: const Text("Country"),
                    onSelected: (val) {
                      if (val != null) {
                        _cityController.clear();
                        _districtController.clear();
                        context
                            .read<RegionBloc>()
                            .add(RegionSelectedCountryChanged(country: val));
                      }
                    },
                    dropdownMenuEntries: state.countries
                        .map((e) => DropdownMenuEntry(value: e, label: e.name))
                        .toList(),
                  );
                },
              ),
              const SizedSpacer.medium(),
              BlocBuilder<RegionBloc, RegionState>(
                buildWhen: (previous, current) =>
                    previous.cities != current.cities,
                builder: (context, state) {
                  return DropdownMenu<City>(
                    controller: _cityController,
                    enabled: state.cities.isNotEmpty,
                    enableFilter: true,
                    width: MediaQuery.of(context).size.width - 36,
                    requestFocusOnTap: true,
                    label: const Text("City"),
                    initialSelection: state.selectedCity,
                    onSelected: (val) {
                      if (val != null) {
                        _districtController.clear();
                        context
                            .read<RegionBloc>()
                            .add(RegionSelectedCityChanged(city: val));
                      }
                    },
                    dropdownMenuEntries: state.cities
                        .map((e) => DropdownMenuEntry(value: e, label: e.name))
                        .toList(),
                  );
                },
              ),
              const SizedSpacer.medium(),
              BlocBuilder<RegionBloc, RegionState>(
                buildWhen: (previous, current) =>
                    previous.districts != current.districts,
                builder: (context, state) {
                  return DropdownMenu<District>(
                    controller: _districtController,
                    enabled: state.districts.isNotEmpty,
                    initialSelection: state.selectedDistrict,
                    enableFilter: true,
                    width: MediaQuery.of(context).size.width - 36,
                    requestFocusOnTap: true,
                    label: const Text("District"),
                    onSelected: (val) {
                      if (val != null) {
                        context
                            .read<RegionBloc>()
                            .add(RegionSelectedDistrictChanged(district: val));
                      }
                    },
                    dropdownMenuEntries: state.districts
                        .map((e) => DropdownMenuEntry(value: e, label: e.name))
                        .toList(),
                  );
                },
              ),
              const SizedSpacer.large(),
              ElevatedButton(onPressed: () {}, child: const Text("Sign Up"))
            ],
          ),
        ),
      ),
    ));
  }
}
