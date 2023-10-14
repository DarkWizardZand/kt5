import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt5/models/cars/car/car.dart';

part 'cars.freezed.dart';
part 'cars.g.dart';

@freezed
class Cars with _$Cars {

  factory Cars({
    @Default([]) List<Car> cars,
  }) = _Cars;

  factory Cars.fromJson(Map<String, dynamic> json) => _$CarsFromJson(json);
}