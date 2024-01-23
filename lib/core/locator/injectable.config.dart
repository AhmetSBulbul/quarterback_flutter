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

import '../../features/auth/data/auth_repository.dart' as _i9;
import '../../features/auth/data/auth_storage.dart' as _i7;
import '../../features/chat/data/chat_repository.dart' as _i10;
import '../../features/court/data/court_repository.dart' as _i11;
import '../../features/media/data/media_repository.dart' as _i12;
import '../../features/region/data/region_repository.dart' as _i6;
import '../../features/user/data/user_repository.dart' as _i13;
import '../interceptors/auth_interceptor.dart' as _i8;
import '../interceptors/logger_interceptor.dart' as _i5;
import 'register.module.dart' as _i14;

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
    gh.singleton<_i5.LoggerInterceptor>(_i5.LoggerInterceptor());
    gh.lazySingleton<_i6.RegionRepository>(
        () => _i6.RegionRepository(gh<_i4.ClientChannel>()));
    gh.singleton<_i7.AuthStorage>(
        _i7.AuthStorage(gh<_i3.Box<String>>(instanceName: 'credentialsBox')));
    gh.singleton<_i8.AuthInterceptor>(
        _i8.AuthInterceptor(gh<_i7.AuthStorage>()));
    gh.singleton<_i9.AuthRepository>(_i9.AuthRepository(
      channel: gh<_i4.ClientChannel>(),
      authStorage: gh<_i7.AuthStorage>(),
      loggerInterceptor: gh<_i5.LoggerInterceptor>(),
    ));
    gh.lazySingleton<_i10.ChatRepository>(() => _i10.ChatRepository(
          gh<_i4.ClientChannel>(),
          gh<_i8.AuthInterceptor>(),
          gh<_i5.LoggerInterceptor>(),
        ));
    gh.lazySingleton<_i11.CourtRepository>(() => _i11.CourtRepository(
          gh<_i4.ClientChannel>(),
          gh<_i5.LoggerInterceptor>(),
          gh<_i8.AuthInterceptor>(),
        ));
    gh.lazySingleton<_i12.MediaRepository>(() => _i12.MediaRepository(
          gh<_i4.ClientChannel>(),
          gh<_i5.LoggerInterceptor>(),
          gh<_i8.AuthInterceptor>(),
        ));
    gh.singleton<_i13.UserRepository>(_i13.UserRepository(
      gh<_i4.ClientChannel>(),
      gh<_i5.LoggerInterceptor>(),
      gh<_i8.AuthInterceptor>(),
    ));
    gh.lazySingleton<_i11.CourtCommentListUseCase>(
        () => _i11.CourtCommentListUseCase(gh<_i11.CourtRepository>()));
    gh.lazySingleton<_i11.CourtListUseCase>(
        () => _i11.CourtListUseCase(gh<_i11.CourtRepository>()));
    gh.lazySingleton<_i13.UserListUseCase>(
        () => _i13.UserListUseCase(gh<_i13.UserRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
