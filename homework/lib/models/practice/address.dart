part of 'models.dart';

@freezed
abstract class Address with _$Address {
  factory Address({
    required String? street,
    required String? suite,
    required String? city,
    required String? zipcode,
    required Company? company,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}
