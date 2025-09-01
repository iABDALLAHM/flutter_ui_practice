abstract class CalcState {}

class InitialCalcState extends CalcState {}

class LoadingCalcState extends CalcState {}

class SuccessCalcState extends CalcState {
  final double result;
  SuccessCalcState({required this.result});
}

class FailureCalcState extends CalcState {
  final String errMessage;
  FailureCalcState({required this.errMessage});
}
