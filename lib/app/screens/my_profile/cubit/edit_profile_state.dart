part of 'edit_profile_cubit.dart';

class EditProfileState extends Equatable with FormzMixin {
  EditProfileState({
    this.name = const NameInput.pure(),
    this.lastName = const LastNameInput.pure(),
    this.district = const DistrictInput.pure(),
    this.isLoading = false,
  });

  final NameInput name;
  final LastNameInput lastName;
  final DistrictInput district;
  final bool isLoading;

  @override
  List<FormzInput> get inputs => [name, lastName, district];

  @override
  List<Object> get props => [name, lastName, district, isLoading];

  EditProfileState copyWith({
    NameInput? name,
    LastNameInput? lastName,
    DistrictInput? district,
    bool? isLoading,
  }) {
    return EditProfileState(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      district: district ?? this.district,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
