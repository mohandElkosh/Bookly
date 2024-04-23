import 'package:dartz/dartz.dart';
import 'package:ecommerce_get/Core/errors/failures.dart';
import 'package:ecommerce_get/Features/home/data/models/book_model/book_model.dart';
import 'package:ecommerce_get/Features/home/data/reopo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failuer, List<BookModel>>> fetchBestSellerBoks() {
    // TODO: implement fetchBestSellerBoks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
