import 'package:bmi_calaculator_app/features/home/presentation/manager/calculate_bmi_cubit/calc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalcCubit extends Cubit<CalcState> {
  CalcCubit() : super(InitialCalcState());

  void calculate({
    required double height,
    required int weight,
    required String gender,
    required int age,
  }) {
    try {
      emit(LoadingCalcState());
      double result = weight / ((height / 100) * (height / 100));
      emit(SuccessCalcState(result: result));
    } catch (error) {
      emit(FailureCalcState(errMessage: error.toString()));
    }
  }
}
