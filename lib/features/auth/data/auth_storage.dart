import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:quarterback_flutter/generated/protos/authpb.pbgrpc.dart';

@singleton
class AuthStorage {
  AuthStorage(@Named('credentialsBox') Box<String> credentialsBox)
      : _credentialsBox = credentialsBox;

  final Box<String> _credentialsBox;

  Future<void> saveCredentials(Credentials credentials) async {
    try {
      await _credentialsBox.put('token', credentials.token);
      await _credentialsBox.put('refreshToken', credentials.refreshToken);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteCredentials() async {
    try {
      await _credentialsBox.delete('token');
      await _credentialsBox.delete('refreshToken');
    } catch (e) {
      log("Error deleting credentials ${e.toString()}");
    }
  }

  String? get token => _credentialsBox.get('token');
  String? get refreshToken => _credentialsBox.get('refreshToken');
}
