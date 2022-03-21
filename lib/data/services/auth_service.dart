import 'package:dio/dio.dart';

abstract class AuthService {
  Future<Response> getName(name);
  Future<Response> getEmail(email);
}
