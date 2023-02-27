import 'package:sqflite/sqflite.dart';

import '../../../core/constants/constants.dart';
import '../../../core/enums/enums.dart';
import '../../../core/error/exceptions.dart';
import '../../../core/network/requests/auth_request.dart';
import '../models/user_model.dart';

abstract class LocalDataSource {
  Future<UserModel> login(AuthRequest request);

  Future<void> register(AuthRequest request);
}

class LocalDataSourceImpl implements LocalDataSource {
  final Database database;

  LocalDataSourceImpl(this.database);

  @override
  Future<UserModel> login(AuthRequest request) async {
    final result = await database.rawQuery(
      'SELECT * FROM ${DatabaseConstants.userTableName} '
      'WHERE ${DatabaseConstants.usernameColumn} = ? LIMIT 1',
      [
        request.username,
      ],
    );

    if (result.isEmpty) {
      throw const CustomException.authException(
        AuthErrorType.usernameError,
      );
    }

    final user = UserModel.fromJson(result.first);

    if (user.password != request.password) {
      throw const CustomException.authException(
        AuthErrorType.passwordError,
      );
    }

    return user;
  }

  @override
  Future<void> register(AuthRequest request) async {
    try {
      await database.transaction((txn) async {
        await txn.rawInsert(
          'INSERT INTO ${DatabaseConstants.userTableName} ('
          '${DatabaseConstants.usernameColumn}, '
          '${DatabaseConstants.passwordColumn}'
          ') '
          'VALUES ('
          '"${request.username}", '
          '"${request.password}"'
          ')',
        );
      });
    } on DatabaseException catch (e) {
      if (e.isUniqueConstraintError()) {
        throw const CustomException.databaseException(
          'This user name is registered before',
        );
      }
    }
  }
}
