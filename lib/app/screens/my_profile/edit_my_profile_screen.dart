import 'dart:io' as io;

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quarterback_flutter/app/screens/my_profile/cubit/edit_profile_cubit.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/app/widgets/profile/avatar.dart';
import 'package:quarterback_flutter/core/extensions/build_context_extensions.dart';
import 'package:quarterback_flutter/core/formatters/inputs.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/features/media/data/media_repository.dart';
import 'package:quarterback_flutter/features/region/bloc/region_bloc.dart';
import 'package:quarterback_flutter/features/region/data/region_repository.dart';
import 'package:quarterback_flutter/features/user/bloc/current_user_bloc.dart';
import 'package:quarterback_flutter/generated/protos/filepb.pb.dart';
import 'package:quarterback_flutter/generated/protos/regionpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/userpb.pb.dart';

class EditMyProfileScreen extends StatelessWidget {
  const EditMyProfileScreen({super.key});
  // TODO: on exit route

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: false,
      ),
      body: BlocBuilder<CurrentUserCubit, CurrentUserState>(
        builder: (context, currentUserState) {
          if (currentUserState is CurrentUserLoaded) {
            final nameTextController =
                TextEditingController(text: currentUserState.user.name);
            final lastNameTextController =
                TextEditingController(text: currentUserState.user.lastName);
            // final TextEditingController countryController =
            //     TextEditingController(text: currentUserState.user.country.name);
            final TextEditingController cityController =
                TextEditingController(text: currentUserState.user.city.name);
            final TextEditingController districtController =
                TextEditingController(
                    text: currentUserState.user.district.name);

            return MultiBlocProvider(
                providers: [
                  BlocProvider<RegionBloc>(
                    create: (context) =>
                        RegionBloc(repository: locator<RegionRepository>())
                          ..add(RegionInitialWithData(
                            city: currentUserState.user.city,
                            country: currentUserState.user.country,
                            district: currentUserState.user.district,
                          )),
                  ),
                  BlocProvider(
                    create: (context) => EditProfileCubit(
                      initialState: EditProfileState(
                        name: NameInput.dirty(currentUserState.user.name),
                        lastName:
                            LastNameInput.dirty(currentUserState.user.lastName),
                        district: DistrictInput.dirty(
                            currentUserState.user.district.id),
                      ),
                    ),
                  ),
                ],
                child: BlocBuilder<EditProfileCubit, EditProfileState>(
                  builder: (context, editState) {
                    return BlocListener<RegionBloc, RegionState>(
                      listenWhen: (previous, current) =>
                          (previous.failure != current.failure &&
                              current.failure != null) ||
                          (previous.selectedDistrict !=
                              current.selectedDistrict),
                      listener: (context, regionState) {
                        if (regionState.failure != null) {
                          // show snackbar
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            // content: Text(state.failure?.cause ?? 'Unknown Error'),
                            content: Text(
                                regionState.failure?.exception.toString() ??
                                    "Unknown Error"),
                          ));
                        } else {
                          context.read<EditProfileCubit>().districtChanged(
                              regionState.selectedDistrict?.id ?? -1);
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 24),
                        child: ListView(
                          children: [
                            Align(
                              child: Center(
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        try {
                                          // Upload photo
                                          FilePickerResult? result =
                                              await FilePicker.platform
                                                  .pickFiles(
                                                      type: FileType.media);

                                          if (result != null) {
                                            io.File file = io.File(
                                                result.files.single.path!);
                                            final response =
                                                await locator<MediaRepository>()
                                                    .uploadFile(UploadRequest(
                                              data: file.readAsBytesSync(),
                                              name: result.files.single.name,
                                            ));
                                            print(response);
                                            await context
                                                .read<CurrentUserCubit>()
                                                .updateAvatar(
                                                    UpdateAvatarRequest(
                                                        avatarFileId:
                                                            response.id));
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                              content: Text("Avatar Updated"),
                                            ));
                                          } else {
                                            // User canceled the picker
                                          }
                                        } catch (e) {
                                          // show snackbar
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                            // content: Text(state.failure?.cause ?? 'Unknown Error'),
                                            content: Text(e.toString() ??
                                                "Unknown Error"),
                                          ));
                                        }
                                      },
                                      child: Avatar.large(
                                        path: currentUserState.user.avatarPath,
                                      ),
                                    ),
                                    const SizedSpacer.medium(),
                                    Text(
                                      "Upload Photo",
                                      style: context.textTheme.labelMedium,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedSpacer.large(),
                            TextField(
                              controller: nameTextController,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person),
                                labelText: "Name",
                                errorText: editState.name.error?.message,
                              ),
                              onChanged:
                                  context.read<EditProfileCubit>().nameChanged,
                            ),
                            const SizedSpacer.medium(),
                            TextField(
                              controller: lastNameTextController,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person),
                                labelText: "Last Name",
                                errorText: editState.lastName.error?.message,
                              ),
                              onChanged: context
                                  .read<EditProfileCubit>()
                                  .lastNameChanged,
                            ),
                            const SizedSpacer.medium(),
                            BlocBuilder<RegionBloc, RegionState>(
                              buildWhen: (previous, current) =>
                                  previous.countries != current.countries,
                              builder: (context, state) {
                                return DropdownMenu<Country>(
                                  enabled: state.countries.isNotEmpty,
                                  initialSelection: state.selectedCountry,
                                  // enableFilter: true,
                                  width: MediaQuery.of(context).size.width - 36,
                                  requestFocusOnTap: false,
                                  label: const Text("Country"),
                                  onSelected: (val) {
                                    if (val != null) {
                                      cityController.clear();
                                      districtController.clear();
                                      context.read<RegionBloc>().add(
                                          RegionSelectedCountryChanged(
                                              country: val));
                                    }
                                  },
                                  dropdownMenuEntries: state.countries
                                      .map((e) => DropdownMenuEntry(
                                          value: e, label: e.name))
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
                                  controller: cityController,
                                  enabled: state.cities.isNotEmpty,
                                  // enableFilter: true,
                                  width: MediaQuery.of(context).size.width - 36,
                                  requestFocusOnTap: false,
                                  label: const Text("City"),
                                  initialSelection: state.selectedCity,
                                  onSelected: (val) {
                                    if (val != null) {
                                      districtController.clear();
                                      context.read<RegionBloc>().add(
                                          RegionSelectedCityChanged(city: val));
                                    }
                                  },
                                  dropdownMenuEntries: state.cities
                                      .map((e) => DropdownMenuEntry(
                                          value: e, label: e.name))
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
                                  controller: districtController,
                                  enabled: state.districts.isNotEmpty,
                                  initialSelection: state.selectedDistrict,
                                  // enableFilter: true,
                                  width: MediaQuery.of(context).size.width - 36,
                                  requestFocusOnTap: false,
                                  label: const Text("District"),
                                  onSelected: (val) {
                                    if (val != null) {
                                      context.read<RegionBloc>().add(
                                          RegionSelectedDistrictChanged(
                                              district: val));
                                    }
                                  },
                                  dropdownMenuEntries: state.districts
                                      .map((e) => DropdownMenuEntry(
                                          value: e, label: e.name))
                                      .toList(),
                                );
                              },
                            ),
                            const SizedSpacer.large(),
                            ElevatedButton(
                              onPressed: editState.isValid
                                  ? () async {
                                      try {
                                        await context
                                            .read<CurrentUserCubit>()
                                            .updateUser(UserUpdateRequest(
                                              name: editState.name.value,
                                              lastname:
                                                  editState.lastName.value,
                                              districtID:
                                                  editState.district.value,
                                            ));
                                        context.pop();
                                      } catch (e) {
                                        // show snackbar
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          // content: Text(state.failure?.cause ?? 'Unknown Error'),
                                          content: Text(
                                              e.toString() ?? "Unknown Error"),
                                        ));
                                      }
                                      // context.pop();
                                    }
                                  : null,
                              child: const Text("Save"),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ));
          } else if (currentUserState is CurrentUserError) {
            return Center(child: Text(currentUserState.cause));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
