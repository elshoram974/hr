import '../../../app_info.dart';

abstract final class AppLinks {
  const AppLinks();

  static const String _domain = AppInfo.baseURL;
  static const String _baseLink = '$_domain/hr/api';


  static const String _auth = '$_baseLink/auth';
  static const String login = '$_auth/login';
}
