import 'package:blog_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:blog_app/features/auth/domain/auth_repository.dart';
import 'package:blog_app/core/error/exceptions.dart';
import 'package:blog_app/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepoImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  const AuthRepoImpl(this.remoteDataSource);

  @override
  Future<Either<Failures, String>> logInWithEmailPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement logInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final userID = await remoteDataSource.signUpWithEmailPassword(
        name: name,
        email: email,
        password: password,
      );
      return right(userID);
    } on ServerException catch (e) {
      return left(Failures(e.message));
    }
  }
}
