// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:grpc/grpc.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/cubit/auth_cubit.dart' as _i3;
import '../../features/auth/data/auth_repository.dart' as _i6;
import '../../features/region/data/region_repository.dart' as _i5;
import 'register.module.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.AuthCubit>(
      () => registerModule.authCubit,
      preResolve: true,
    );
    gh.singleton<_i4.ClientChannel>(registerModule.clientChannel);
    gh.lazySingleton<_i5.RegionRepository>(
        () => _i5.RegionRepository(gh<_i4.ClientChannel>()));
    gh.singleton<_i6.AuthRepository>(
        _i6.AuthRepository(gh<_i4.ClientChannel>()));
    return this;
  }
}

class _$RegisterModule extends _i7.RegisterModule {}
