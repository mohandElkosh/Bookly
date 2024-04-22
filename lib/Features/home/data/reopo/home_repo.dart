import 'package:dartz/dartz.dart';
import 'package:ecommerce_get/Core/errors/failures.dart';
import 'package:ecommerce_get/Features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> fetchBestSellerBoks();
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks();
}
