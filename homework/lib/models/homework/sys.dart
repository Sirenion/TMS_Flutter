part of 'models.dart';

@freezed
abstract class Sys with _$Sys {
  factory Sys({
    required int? type,
    required int? id,
    required String? country,
    required double? sunrise,
    required double? sunset,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}
