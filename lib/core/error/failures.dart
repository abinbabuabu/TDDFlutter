import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  // if the subclass have some properties, they'll get passes to this constructor
  // So that Equatable can perform value comparison

  // Passing the value to the constructor is not possible implement the props method
  final List properties;

  Failure([this.properties = const<dynamic>[]]);

  @override
  List<Object> get props => properties;
}


class ServerFailure extends Failure {}
class CacheFailure extends Failure {}