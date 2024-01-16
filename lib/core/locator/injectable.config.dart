// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:grpc/grpc.dart' as _i4;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/data/auth_repository.dart' as _i8;
import '../../features/auth/data/auth_storage.dart' as _i7;
import '../../features/region/data/region_repository.dart' as _i5;
import '../../features/user/data/user_repository.dart' as _i6;
import 'register.module.dart' as _i9;

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
    await gh.factoryAsync<_i3.Box<String>>(
      () => registerModule.credentialsBox,
      instanceName: 'credentialsBox',
      preResolve: true,
    );
    gh.singleton<_i4.ClientChannel>(registerModule.clientChannel);
    gh.lazySingleton<_i5.RegionRepository>(
        () => _i5.RegionRepository(gh<_i4.ClientChannel>()));
    gh.singleton<_i6.UserRepository>(
        _i6.UserRepository(gh<_i4.ClientChannel>()));
    gh.singleton<_i7.AuthStorage>(
        _i7.AuthStorage(gh<_i3.Box<String>>(instanceName: 'credentialsBox')));
    gh.singleton<_i8.AuthRepository>(_i8.AuthRepository(
      channel: gh<_i4.ClientChannel>(),
      authStorage: gh<_i7.AuthStorage>(),
    ));
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
