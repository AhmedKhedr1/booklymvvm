import 'package:booklymvvm/Core/errors/Failures.dart';
import 'package:booklymvvm/Features/Home/data/models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Bookmodel>>> FetchVewestBooks();
  Future<Either<Failure, List<Bookmodel>>> FetchFeaturedBooks();
}
