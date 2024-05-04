import 'package:bloc/bloc.dart';
import 'package:ecommerce_get/Features/home/data/reopo/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../home/data/models/book_model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;
  Future<void> featchFuturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failuer) {
      emit(FeaturedBooksFailuer(failuer.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
