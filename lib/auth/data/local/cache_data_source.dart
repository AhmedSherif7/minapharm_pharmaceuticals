import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/constants.dart';
import '../../../core/network/requests/auth_request.dart';
import '../models/user_model.dart';

abstract class CacheDataSource {
  Future<void> cacheUserLogin(AuthRequest request);

  UserModel? getUserLoginState();

  Future<void> removeUserLogin();
}

class CacheDataSourceImpl implements CacheDataSource {
  final SharedPreferences sharedPreferences;

  CacheDataSourceImpl(this.sharedPreferences);

  @override
  Future<void> cacheUserLogin(AuthRequest request) async {
    await Future.value([
      sharedPreferences.setString(
        CacheConstants.usernameCacheKey,
        request.username,
      ),
      sharedPreferences.setString(
        CacheConstants.passwordCacheKey,
        request.password,
      ),
    ]);
  }

  @override
  Future<void> removeUserLogin() async {
    await Future.value([
      sharedPreferences.remove(
        CacheConstants.usernameCacheKey,
      ),
      sharedPreferences.remove(
        CacheConstants.passwordCacheKey,
      ),
    ]);
  }

  @override
  UserModel? getUserLoginState() {
    final username = sharedPreferences.getString(
      CacheConstants.usernameCacheKey,
    );
    final password = sharedPreferences.getString(
      CacheConstants.passwordCacheKey,
    );
    if (username != null && password != null) {
      return UserModel(username: username, password: password);
    }

    return null;
  }
}
