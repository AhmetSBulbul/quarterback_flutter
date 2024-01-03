import 'package:flutter/material.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/features/region/data/region_repository.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Login"),
          onPressed: () async {
            final _regionRepository = locator<RegionRepository>();
            try {
              final countryList = await _regionRepository.listCountry();
              print(countryList.countries);
              final cityList = await _regionRepository.listCity(
                GetByIdRequest(id: 1),
              );
              print(cityList.cities);
              final districtList = await _regionRepository.listDistrict(
                GetByIdRequest(id: 2),
              );
              print(districtList.districts);
              // final credentials = await _authRepository.login(
              //   LoginRequest(
              //     username: 'admin',
              //     password: '152535',
              //   ),
              // );
              // print(credentials.token);
              // print(credentials.refreshToken);
            } catch (e) {
              print(e);
            }
          },
        ),
      ),
    );
  }
}
