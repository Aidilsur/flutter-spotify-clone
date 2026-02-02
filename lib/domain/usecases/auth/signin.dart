import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/usecases/usecase.dart';
import 'package:spotify_clone/data/models/auth/siginin_user_req.dart';
import 'package:spotify_clone/domain/repository/auth/auth.dart';
import 'package:spotify_clone/service_locator.dart';

class SigninUseCase implements UseCase<Either, SigninUserReq> {
  @override
  Future<Either<dynamic, dynamic>> call({SigninUserReq? params}) {
    return sl<AuthRepository>().signin(params!);
  }
}
