import 'package:bloc/bloc.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selectSeat(String id) {
    if (!state.contains(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }
    // List.from() utk membuat init/instance baru
    emit(List.from(state));
  }

  bool isSelected(String id) {
    if (!state.contains(id)) {
      return false;
    } else {
      return true;
    }
  }
}
