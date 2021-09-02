import 'package:bloc/bloc.dart';

class PageCubit extends Cubit<int> {
  // 0 maksudnya halaman pertama yang active index 0
  PageCubit() : super(0);

  void setPage(int newPage) {
    emit(newPage);
  }
}
