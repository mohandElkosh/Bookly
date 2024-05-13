import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_get/Core/errors/failures.dart';
import 'package:ecommerce_get/Core/utils/api_services.dart';
import 'package:ecommerce_get/Features/home/data/models/book_model/book_model.dart';
import 'package:ecommerce_get/Features/home/data/reopo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failuer, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &g=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.DioException(e));
      }
      return left(ServerFailure(errMessage: 'Oops! Something went wrong'));
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks() async {
    // TODO: implement fetchFeaturedBooks
    try {
      //volumes?q=time&printType=magazines
      var data =
          await apiServices.get(endPoint: 'volumes?q=flowers&projection=lite');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.DioException(e));
      }
      return left(ServerFailure(errMessage: 'Oops! Something went wrong'));
    }
  }
}
