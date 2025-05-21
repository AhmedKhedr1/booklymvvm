import 'package:booklymvvm/Core/Utils/Api_Service.dart';
import 'package:booklymvvm/Core/errors/Failures.dart';
import 'package:booklymvvm/Features/Home/data/models/bookmodel/bookmodel.dart';
import 'package:booklymvvm/Features/Home/data/repos/Home_repo.dart';
import 'package:dartz/dartz.dart';

class HomerepoImpl implements HomeRepo {
  final ApiService apiService;

  HomerepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<Bookmodel>>> FetchVewestBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
              'volumes?q=programming&Sorting=newest&Filtering=free-ebooks');
      List<Bookmodel> books = [];
      for (var book in data['items']) {
        books.add(Bookmodel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Bookmodel>>> FetchFeaturedBooks() {
    // TODO: implement FetchFeaturedBooks
    throw UnimplementedError();
  }
}
