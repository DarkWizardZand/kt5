// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarsImpl _$$CarsImplFromJson(Map<String, dynamic> json) => _$CarsImpl(
      cars: (json['cars'] as List<dynamic>?)
              ?.map((e) => Car.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CarsImplToJson(_$CarsImpl instance) =>
    <String, dynamic>{
      'cars': instance.cars,
    };
