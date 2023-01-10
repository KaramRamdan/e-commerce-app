import 'package:equatable/equatable.dart';


abstract class BaseUseCase<T, Parameters> {
  Future<T> call(Parameters parameters);
}

class NoParameters extends Equatable {
  const NoParameters();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
