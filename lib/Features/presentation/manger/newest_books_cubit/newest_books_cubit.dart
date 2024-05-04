import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../home/data/models/book_model/book_model.dart';
import '../../../home/data/reopo/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;
  Future<void> featchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failuer) {
      emit(NewestBooksFailuer(failuer.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
