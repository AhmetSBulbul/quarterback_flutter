// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:grpc/grpc.dart' as _i5;
import 'package:hive/hive.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/data/auth_repository.dart' as _i10;
import '../../features/auth/data/auth_storage.dart' as _i8;
import '../../features/chat/data/chat_repository.dart' as _i11;
import '../../features/court/data/court_repository.dart' as _i12;
import '../../features/fixture/fixture_repository.dart' as _i13;
import '../../features/game/game_repository.dart' as _i14;
import '../../features/media/data/media_repository.dart' as _i15;
import '../../features/region/data/region_repository.dart' as _i7;
import '../../features/user/data/user_repository.dart' as _i16;
import '../config.dart' as _i3;
import '../interceptors/auth_interceptor.dart' as _i9;
import '../interceptors/logger_interceptor.dart' as _i6;
import 'register.module.dart' as _i17;

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
    await gh.singletonAsync<_i3.AppConfig>(
      () => registerModule.appConfig,
      preResolve: true,
    );
    await gh.factoryAsync<_i4.Box<String>>(
      () => registerModule.credentialsBox,
      instanceName: 'credentialsBox',
      preResolve: true,
    );
    gh.singleton<_i5.ClientChannel>(
        registerModule.clientChannel(gh<_i3.AppConfig>()));
    gh.singleton<_i6.LoggerInterceptor>(_i6.LoggerInterceptor());
    gh.lazySingleton<_i7.RegionRepository>(
        () => _i7.RegionRepository(gh<_i5.ClientChannel>()));
    gh.singleton<_i8.AuthStorage>(
        _i8.AuthStorage(gh<_i4.Box<String>>(instanceName: 'credentialsBox')));
    gh.singleton<_i9.AuthInterceptor>(
        _i9.AuthInterceptor(gh<_i8.AuthStorage>()));
    gh.singleton<_i10.AuthRepository>(_i10.AuthRepository(
      channel: gh<_i5.ClientChannel>(),
      authStorage: gh<_i8.AuthStorage>(),
      loggerInterceptor: gh<_i6.LoggerInterceptor>(),
    ));
    gh.lazySingleton<_i11.ChatRepository>(() => _i11.ChatRepository(
          gh<_i5.ClientChannel>(),
          gh<_i9.AuthInterceptor>(),
          gh<_i6.LoggerInterceptor>(),
        ));
    gh.lazySingleton<_i12.CourtRepository>(() => _i12.CourtRepository(
          gh<_i5.ClientChannel>(),
          gh<_i6.LoggerInterceptor>(),
          gh<_i9.AuthInterceptor>(),
        ));
    gh.lazySingleton<_i13.FixtureRepository>(() => _i13.FixtureRepository(
          channel: gh<_i5.ClientChannel>(),
          loggerInterceptor: gh<_i6.LoggerInterceptor>(),
          authInterceptor: gh<_i9.AuthInterceptor>(),
        ));
    gh.lazySingleton<_i14.GameRepository>(() => _i14.GameRepository(
          gh<_i5.ClientChannel>(),
          gh<_i6.LoggerInterceptor>(),
          gh<_i9.AuthInterceptor>(),
        ));
    gh.lazySingleton<_i15.MediaRepository>(() => _i15.MediaRepository(
          gh<_i5.ClientChannel>(),
          gh<_i6.LoggerInterceptor>(),
          gh<_i9.AuthInterceptor>(),
        ));
    gh.singleton<_i16.UserRepository>(_i16.UserRepository(
      gh<_i5.ClientChannel>(),
      gh<_i6.LoggerInterceptor>(),
      gh<_i9.AuthInterceptor>(),
    ));
    gh.lazySingleton<_i12.CourtCommentListUseCase>(
        () => _i12.CourtCommentListUseCase(gh<_i12.CourtRepository>()));
    gh.lazySingleton<_i12.CourtListUseCase>(
        () => _i12.CourtListUseCase(gh<_i12.CourtRepository>()));
    gh.lazySingleton<_i16.UserListUseCase>(
        () => _i16.UserListUseCase(gh<_i16.UserRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i17.RegisterModule {}
