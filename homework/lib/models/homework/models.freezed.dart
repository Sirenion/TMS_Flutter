// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherMainResponse {

 Coordinates? get coord; List<Weather>? get weather; String? get base; WeatherMain? get main; int? get visibility; Wind? get wind; Rain? get rain; Clouds? get clouds; Snow? get snow; int? get dt; Sys? get sys; int? get timezone; String? get name; int? get cod;
/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherMainResponseCopyWith<WeatherMainResponse> get copyWith => _$WeatherMainResponseCopyWithImpl<WeatherMainResponse>(this as WeatherMainResponse, _$identity);

  /// Serializes this WeatherMainResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherMainResponse&&(identical(other.coord, coord) || other.coord == coord)&&const DeepCollectionEquality().equals(other.weather, weather)&&(identical(other.base, base) || other.base == base)&&(identical(other.main, main) || other.main == main)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.rain, rain) || other.rain == rain)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.snow, snow) || other.snow == snow)&&(identical(other.dt, dt) || other.dt == dt)&&(identical(other.sys, sys) || other.sys == sys)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.name, name) || other.name == name)&&(identical(other.cod, cod) || other.cod == cod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coord,const DeepCollectionEquality().hash(weather),base,main,visibility,wind,rain,clouds,snow,dt,sys,timezone,name,cod);

@override
String toString() {
  return 'WeatherMainResponse(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, rain: $rain, clouds: $clouds, snow: $snow, dt: $dt, sys: $sys, timezone: $timezone, name: $name, cod: $cod)';
}


}

/// @nodoc
abstract mixin class $WeatherMainResponseCopyWith<$Res>  {
  factory $WeatherMainResponseCopyWith(WeatherMainResponse value, $Res Function(WeatherMainResponse) _then) = _$WeatherMainResponseCopyWithImpl;
@useResult
$Res call({
 Coordinates? coord, List<Weather>? weather, String? base, WeatherMain? main, int? visibility, Wind? wind, Rain? rain, Clouds? clouds, Snow? snow, int? dt, Sys? sys, int? timezone, String? name, int? cod
});


$CoordinatesCopyWith<$Res>? get coord;$WeatherMainCopyWith<$Res>? get main;$WindCopyWith<$Res>? get wind;$RainCopyWith<$Res>? get rain;$CloudsCopyWith<$Res>? get clouds;$SnowCopyWith<$Res>? get snow;$SysCopyWith<$Res>? get sys;

}
/// @nodoc
class _$WeatherMainResponseCopyWithImpl<$Res>
    implements $WeatherMainResponseCopyWith<$Res> {
  _$WeatherMainResponseCopyWithImpl(this._self, this._then);

  final WeatherMainResponse _self;
  final $Res Function(WeatherMainResponse) _then;

/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coord = freezed,Object? weather = freezed,Object? base = freezed,Object? main = freezed,Object? visibility = freezed,Object? wind = freezed,Object? rain = freezed,Object? clouds = freezed,Object? snow = freezed,Object? dt = freezed,Object? sys = freezed,Object? timezone = freezed,Object? name = freezed,Object? cod = freezed,}) {
  return _then(_self.copyWith(
coord: freezed == coord ? _self.coord : coord // ignore: cast_nullable_to_non_nullable
as Coordinates?,weather: freezed == weather ? _self.weather : weather // ignore: cast_nullable_to_non_nullable
as List<Weather>?,base: freezed == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String?,main: freezed == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as WeatherMain?,visibility: freezed == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int?,wind: freezed == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as Wind?,rain: freezed == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as Rain?,clouds: freezed == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as Clouds?,snow: freezed == snow ? _self.snow : snow // ignore: cast_nullable_to_non_nullable
as Snow?,dt: freezed == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int?,sys: freezed == sys ? _self.sys : sys // ignore: cast_nullable_to_non_nullable
as Sys?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,cod: freezed == cod ? _self.cod : cod // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res>? get coord {
    if (_self.coord == null) {
    return null;
  }

  return $CoordinatesCopyWith<$Res>(_self.coord!, (value) {
    return _then(_self.copyWith(coord: value));
  });
}/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherMainCopyWith<$Res>? get main {
    if (_self.main == null) {
    return null;
  }

  return $WeatherMainCopyWith<$Res>(_self.main!, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindCopyWith<$Res>? get wind {
    if (_self.wind == null) {
    return null;
  }

  return $WindCopyWith<$Res>(_self.wind!, (value) {
    return _then(_self.copyWith(wind: value));
  });
}/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RainCopyWith<$Res>? get rain {
    if (_self.rain == null) {
    return null;
  }

  return $RainCopyWith<$Res>(_self.rain!, (value) {
    return _then(_self.copyWith(rain: value));
  });
}/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CloudsCopyWith<$Res>? get clouds {
    if (_self.clouds == null) {
    return null;
  }

  return $CloudsCopyWith<$Res>(_self.clouds!, (value) {
    return _then(_self.copyWith(clouds: value));
  });
}/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SnowCopyWith<$Res>? get snow {
    if (_self.snow == null) {
    return null;
  }

  return $SnowCopyWith<$Res>(_self.snow!, (value) {
    return _then(_self.copyWith(snow: value));
  });
}/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SysCopyWith<$Res>? get sys {
    if (_self.sys == null) {
    return null;
  }

  return $SysCopyWith<$Res>(_self.sys!, (value) {
    return _then(_self.copyWith(sys: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeatherMainResponse].
extension WeatherMainResponsePatterns on WeatherMainResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherMainResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherMainResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherMainResponse value)  $default,){
final _that = this;
switch (_that) {
case _WeatherMainResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherMainResponse value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherMainResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Coordinates? coord,  List<Weather>? weather,  String? base,  WeatherMain? main,  int? visibility,  Wind? wind,  Rain? rain,  Clouds? clouds,  Snow? snow,  int? dt,  Sys? sys,  int? timezone,  String? name,  int? cod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherMainResponse() when $default != null:
return $default(_that.coord,_that.weather,_that.base,_that.main,_that.visibility,_that.wind,_that.rain,_that.clouds,_that.snow,_that.dt,_that.sys,_that.timezone,_that.name,_that.cod);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Coordinates? coord,  List<Weather>? weather,  String? base,  WeatherMain? main,  int? visibility,  Wind? wind,  Rain? rain,  Clouds? clouds,  Snow? snow,  int? dt,  Sys? sys,  int? timezone,  String? name,  int? cod)  $default,) {final _that = this;
switch (_that) {
case _WeatherMainResponse():
return $default(_that.coord,_that.weather,_that.base,_that.main,_that.visibility,_that.wind,_that.rain,_that.clouds,_that.snow,_that.dt,_that.sys,_that.timezone,_that.name,_that.cod);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Coordinates? coord,  List<Weather>? weather,  String? base,  WeatherMain? main,  int? visibility,  Wind? wind,  Rain? rain,  Clouds? clouds,  Snow? snow,  int? dt,  Sys? sys,  int? timezone,  String? name,  int? cod)?  $default,) {final _that = this;
switch (_that) {
case _WeatherMainResponse() when $default != null:
return $default(_that.coord,_that.weather,_that.base,_that.main,_that.visibility,_that.wind,_that.rain,_that.clouds,_that.snow,_that.dt,_that.sys,_that.timezone,_that.name,_that.cod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherMainResponse implements WeatherMainResponse {
   _WeatherMainResponse({required this.coord, required final  List<Weather>? weather, required this.base, required this.main, required this.visibility, required this.wind, required this.rain, required this.clouds, required this.snow, required this.dt, required this.sys, required this.timezone, required this.name, required this.cod}): _weather = weather;
  factory _WeatherMainResponse.fromJson(Map<String, dynamic> json) => _$WeatherMainResponseFromJson(json);

@override final  Coordinates? coord;
 final  List<Weather>? _weather;
@override List<Weather>? get weather {
  final value = _weather;
  if (value == null) return null;
  if (_weather is EqualUnmodifiableListView) return _weather;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? base;
@override final  WeatherMain? main;
@override final  int? visibility;
@override final  Wind? wind;
@override final  Rain? rain;
@override final  Clouds? clouds;
@override final  Snow? snow;
@override final  int? dt;
@override final  Sys? sys;
@override final  int? timezone;
@override final  String? name;
@override final  int? cod;

/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherMainResponseCopyWith<_WeatherMainResponse> get copyWith => __$WeatherMainResponseCopyWithImpl<_WeatherMainResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherMainResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherMainResponse&&(identical(other.coord, coord) || other.coord == coord)&&const DeepCollectionEquality().equals(other._weather, _weather)&&(identical(other.base, base) || other.base == base)&&(identical(other.main, main) || other.main == main)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.wind, wind) || other.wind == wind)&&(identical(other.rain, rain) || other.rain == rain)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.snow, snow) || other.snow == snow)&&(identical(other.dt, dt) || other.dt == dt)&&(identical(other.sys, sys) || other.sys == sys)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.name, name) || other.name == name)&&(identical(other.cod, cod) || other.cod == cod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coord,const DeepCollectionEquality().hash(_weather),base,main,visibility,wind,rain,clouds,snow,dt,sys,timezone,name,cod);

@override
String toString() {
  return 'WeatherMainResponse(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, rain: $rain, clouds: $clouds, snow: $snow, dt: $dt, sys: $sys, timezone: $timezone, name: $name, cod: $cod)';
}


}

/// @nodoc
abstract mixin class _$WeatherMainResponseCopyWith<$Res> implements $WeatherMainResponseCopyWith<$Res> {
  factory _$WeatherMainResponseCopyWith(_WeatherMainResponse value, $Res Function(_WeatherMainResponse) _then) = __$WeatherMainResponseCopyWithImpl;
@override @useResult
$Res call({
 Coordinates? coord, List<Weather>? weather, String? base, WeatherMain? main, int? visibility, Wind? wind, Rain? rain, Clouds? clouds, Snow? snow, int? dt, Sys? sys, int? timezone, String? name, int? cod
});


@override $CoordinatesCopyWith<$Res>? get coord;@override $WeatherMainCopyWith<$Res>? get main;@override $WindCopyWith<$Res>? get wind;@override $RainCopyWith<$Res>? get rain;@override $CloudsCopyWith<$Res>? get clouds;@override $SnowCopyWith<$Res>? get snow;@override $SysCopyWith<$Res>? get sys;

}
/// @nodoc
class __$WeatherMainResponseCopyWithImpl<$Res>
    implements _$WeatherMainResponseCopyWith<$Res> {
  __$WeatherMainResponseCopyWithImpl(this._self, this._then);

  final _WeatherMainResponse _self;
  final $Res Function(_WeatherMainResponse) _then;

/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coord = freezed,Object? weather = freezed,Object? base = freezed,Object? main = freezed,Object? visibility = freezed,Object? wind = freezed,Object? rain = freezed,Object? clouds = freezed,Object? snow = freezed,Object? dt = freezed,Object? sys = freezed,Object? timezone = freezed,Object? name = freezed,Object? cod = freezed,}) {
  return _then(_WeatherMainResponse(
coord: freezed == coord ? _self.coord : coord // ignore: cast_nullable_to_non_nullable
as Coordinates?,weather: freezed == weather ? _self._weather : weather // ignore: cast_nullable_to_non_nullable
as List<Weather>?,base: freezed == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String?,main: freezed == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as WeatherMain?,visibility: freezed == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int?,wind: freezed == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as Wind?,rain: freezed == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as Rain?,clouds: freezed == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as Clouds?,snow: freezed == snow ? _self.snow : snow // ignore: cast_nullable_to_non_nullable
as Snow?,dt: freezed == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int?,sys: freezed == sys ? _self.sys : sys // ignore: cast_nullable_to_non_nullable
as Sys?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,cod: freezed == cod ? _self.cod : cod // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res>? get coord {
    if (_self.coord == null) {
    return null;
  }

  return $CoordinatesCopyWith<$Res>(_self.coord!, (value) {
    return _then(_self.copyWith(coord: value));
  });
}/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherMainCopyWith<$Res>? get main {
    if (_self.main == null) {
    return null;
  }

  return $WeatherMainCopyWith<$Res>(_self.main!, (value) {
    return _then(_self.copyWith(main: value));
  });
}/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindCopyWith<$Res>? get wind {
    if (_self.wind == null) {
    return null;
  }

  return $WindCopyWith<$Res>(_self.wind!, (value) {
    return _then(_self.copyWith(wind: value));
  });
}/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RainCopyWith<$Res>? get rain {
    if (_self.rain == null) {
    return null;
  }

  return $RainCopyWith<$Res>(_self.rain!, (value) {
    return _then(_self.copyWith(rain: value));
  });
}/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CloudsCopyWith<$Res>? get clouds {
    if (_self.clouds == null) {
    return null;
  }

  return $CloudsCopyWith<$Res>(_self.clouds!, (value) {
    return _then(_self.copyWith(clouds: value));
  });
}/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SnowCopyWith<$Res>? get snow {
    if (_self.snow == null) {
    return null;
  }

  return $SnowCopyWith<$Res>(_self.snow!, (value) {
    return _then(_self.copyWith(snow: value));
  });
}/// Create a copy of WeatherMainResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SysCopyWith<$Res>? get sys {
    if (_self.sys == null) {
    return null;
  }

  return $SysCopyWith<$Res>(_self.sys!, (value) {
    return _then(_self.copyWith(sys: value));
  });
}
}


/// @nodoc
mixin _$Coordinates {

 double? get lon; double? get lat;
/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<Coordinates> get copyWith => _$CoordinatesCopyWithImpl<Coordinates>(this as Coordinates, _$identity);

  /// Serializes this Coordinates to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coordinates&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.lat, lat) || other.lat == lat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lon,lat);

@override
String toString() {
  return 'Coordinates(lon: $lon, lat: $lat)';
}


}

/// @nodoc
abstract mixin class $CoordinatesCopyWith<$Res>  {
  factory $CoordinatesCopyWith(Coordinates value, $Res Function(Coordinates) _then) = _$CoordinatesCopyWithImpl;
@useResult
$Res call({
 double? lon, double? lat
});




}
/// @nodoc
class _$CoordinatesCopyWithImpl<$Res>
    implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._self, this._then);

  final Coordinates _self;
  final $Res Function(Coordinates) _then;

/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lon = freezed,Object? lat = freezed,}) {
  return _then(_self.copyWith(
lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Coordinates].
extension CoordinatesPatterns on Coordinates {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Coordinates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Coordinates value)  $default,){
final _that = this;
switch (_that) {
case _Coordinates():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Coordinates value)?  $default,){
final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? lon,  double? lat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
return $default(_that.lon,_that.lat);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? lon,  double? lat)  $default,) {final _that = this;
switch (_that) {
case _Coordinates():
return $default(_that.lon,_that.lat);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? lon,  double? lat)?  $default,) {final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
return $default(_that.lon,_that.lat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Coordinates implements Coordinates {
   _Coordinates({required this.lon, required this.lat});
  factory _Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);

@override final  double? lon;
@override final  double? lat;

/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoordinatesCopyWith<_Coordinates> get copyWith => __$CoordinatesCopyWithImpl<_Coordinates>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoordinatesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Coordinates&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.lat, lat) || other.lat == lat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lon,lat);

@override
String toString() {
  return 'Coordinates(lon: $lon, lat: $lat)';
}


}

/// @nodoc
abstract mixin class _$CoordinatesCopyWith<$Res> implements $CoordinatesCopyWith<$Res> {
  factory _$CoordinatesCopyWith(_Coordinates value, $Res Function(_Coordinates) _then) = __$CoordinatesCopyWithImpl;
@override @useResult
$Res call({
 double? lon, double? lat
});




}
/// @nodoc
class __$CoordinatesCopyWithImpl<$Res>
    implements _$CoordinatesCopyWith<$Res> {
  __$CoordinatesCopyWithImpl(this._self, this._then);

  final _Coordinates _self;
  final $Res Function(_Coordinates) _then;

/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lon = freezed,Object? lat = freezed,}) {
  return _then(_Coordinates(
lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$Weather {

 int? get id; String? get main; String? get description; String? get icon;
/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherCopyWith<Weather> get copyWith => _$WeatherCopyWithImpl<Weather>(this as Weather, _$identity);

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Weather&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description,icon);

@override
String toString() {
  return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WeatherCopyWith<$Res>  {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) _then) = _$WeatherCopyWithImpl;
@useResult
$Res call({
 int? id, String? main, String? description, String? icon
});




}
/// @nodoc
class _$WeatherCopyWithImpl<$Res>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._self, this._then);

  final Weather _self;
  final $Res Function(Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? main = freezed,Object? description = freezed,Object? icon = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,main: freezed == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Weather].
extension WeatherPatterns on Weather {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Weather value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Weather() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Weather value)  $default,){
final _that = this;
switch (_that) {
case _Weather():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Weather value)?  $default,){
final _that = this;
switch (_that) {
case _Weather() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? main,  String? description,  String? icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Weather() when $default != null:
return $default(_that.id,_that.main,_that.description,_that.icon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? main,  String? description,  String? icon)  $default,) {final _that = this;
switch (_that) {
case _Weather():
return $default(_that.id,_that.main,_that.description,_that.icon);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? main,  String? description,  String? icon)?  $default,) {final _that = this;
switch (_that) {
case _Weather() when $default != null:
return $default(_that.id,_that.main,_that.description,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Weather implements Weather {
   _Weather({required this.id, required this.main, required this.description, required this.icon});
  factory _Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

@override final  int? id;
@override final  String? main;
@override final  String? description;
@override final  String? icon;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherCopyWith<_Weather> get copyWith => __$WeatherCopyWithImpl<_Weather>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Weather&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description,icon);

@override
String toString() {
  return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) _then) = __$WeatherCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? main, String? description, String? icon
});




}
/// @nodoc
class __$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(this._self, this._then);

  final _Weather _self;
  final $Res Function(_Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? main = freezed,Object? description = freezed,Object? icon = freezed,}) {
  return _then(_Weather(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,main: freezed == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WeatherMain {

 double? get temp;@JsonKey(name: 'feels_like') double? get feelsLike;@JsonKey(name: 'temp_min') double? get tempMin;@JsonKey(name: 'temp_max') double? get tempMax; int? get pressure; int? get humidity;@JsonKey(name: 'sea_level') int? get seaLevel;@JsonKey(name: 'grnd_level') int? get grndLevel;
/// Create a copy of WeatherMain
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherMainCopyWith<WeatherMain> get copyWith => _$WeatherMainCopyWithImpl<WeatherMain>(this as WeatherMain, _$identity);

  /// Serializes this WeatherMain to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherMain&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.seaLevel, seaLevel) || other.seaLevel == seaLevel)&&(identical(other.grndLevel, grndLevel) || other.grndLevel == grndLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,feelsLike,tempMin,tempMax,pressure,humidity,seaLevel,grndLevel);

@override
String toString() {
  return 'WeatherMain(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, seaLevel: $seaLevel, grndLevel: $grndLevel)';
}


}

/// @nodoc
abstract mixin class $WeatherMainCopyWith<$Res>  {
  factory $WeatherMainCopyWith(WeatherMain value, $Res Function(WeatherMain) _then) = _$WeatherMainCopyWithImpl;
@useResult
$Res call({
 double? temp,@JsonKey(name: 'feels_like') double? feelsLike,@JsonKey(name: 'temp_min') double? tempMin,@JsonKey(name: 'temp_max') double? tempMax, int? pressure, int? humidity,@JsonKey(name: 'sea_level') int? seaLevel,@JsonKey(name: 'grnd_level') int? grndLevel
});




}
/// @nodoc
class _$WeatherMainCopyWithImpl<$Res>
    implements $WeatherMainCopyWith<$Res> {
  _$WeatherMainCopyWithImpl(this._self, this._then);

  final WeatherMain _self;
  final $Res Function(WeatherMain) _then;

/// Create a copy of WeatherMain
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temp = freezed,Object? feelsLike = freezed,Object? tempMin = freezed,Object? tempMax = freezed,Object? pressure = freezed,Object? humidity = freezed,Object? seaLevel = freezed,Object? grndLevel = freezed,}) {
  return _then(_self.copyWith(
temp: freezed == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double?,feelsLike: freezed == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double?,tempMin: freezed == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double?,tempMax: freezed == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double?,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int?,seaLevel: freezed == seaLevel ? _self.seaLevel : seaLevel // ignore: cast_nullable_to_non_nullable
as int?,grndLevel: freezed == grndLevel ? _self.grndLevel : grndLevel // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherMain].
extension WeatherMainPatterns on WeatherMain {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherMain value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherMain() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherMain value)  $default,){
final _that = this;
switch (_that) {
case _WeatherMain():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherMain value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherMain() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? temp, @JsonKey(name: 'feels_like')  double? feelsLike, @JsonKey(name: 'temp_min')  double? tempMin, @JsonKey(name: 'temp_max')  double? tempMax,  int? pressure,  int? humidity, @JsonKey(name: 'sea_level')  int? seaLevel, @JsonKey(name: 'grnd_level')  int? grndLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherMain() when $default != null:
return $default(_that.temp,_that.feelsLike,_that.tempMin,_that.tempMax,_that.pressure,_that.humidity,_that.seaLevel,_that.grndLevel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? temp, @JsonKey(name: 'feels_like')  double? feelsLike, @JsonKey(name: 'temp_min')  double? tempMin, @JsonKey(name: 'temp_max')  double? tempMax,  int? pressure,  int? humidity, @JsonKey(name: 'sea_level')  int? seaLevel, @JsonKey(name: 'grnd_level')  int? grndLevel)  $default,) {final _that = this;
switch (_that) {
case _WeatherMain():
return $default(_that.temp,_that.feelsLike,_that.tempMin,_that.tempMax,_that.pressure,_that.humidity,_that.seaLevel,_that.grndLevel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? temp, @JsonKey(name: 'feels_like')  double? feelsLike, @JsonKey(name: 'temp_min')  double? tempMin, @JsonKey(name: 'temp_max')  double? tempMax,  int? pressure,  int? humidity, @JsonKey(name: 'sea_level')  int? seaLevel, @JsonKey(name: 'grnd_level')  int? grndLevel)?  $default,) {final _that = this;
switch (_that) {
case _WeatherMain() when $default != null:
return $default(_that.temp,_that.feelsLike,_that.tempMin,_that.tempMax,_that.pressure,_that.humidity,_that.seaLevel,_that.grndLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherMain implements WeatherMain {
   _WeatherMain({required this.temp, @JsonKey(name: 'feels_like') required this.feelsLike, @JsonKey(name: 'temp_min') required this.tempMin, @JsonKey(name: 'temp_max') required this.tempMax, required this.pressure, required this.humidity, @JsonKey(name: 'sea_level') required this.seaLevel, @JsonKey(name: 'grnd_level') required this.grndLevel});
  factory _WeatherMain.fromJson(Map<String, dynamic> json) => _$WeatherMainFromJson(json);

@override final  double? temp;
@override@JsonKey(name: 'feels_like') final  double? feelsLike;
@override@JsonKey(name: 'temp_min') final  double? tempMin;
@override@JsonKey(name: 'temp_max') final  double? tempMax;
@override final  int? pressure;
@override final  int? humidity;
@override@JsonKey(name: 'sea_level') final  int? seaLevel;
@override@JsonKey(name: 'grnd_level') final  int? grndLevel;

/// Create a copy of WeatherMain
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherMainCopyWith<_WeatherMain> get copyWith => __$WeatherMainCopyWithImpl<_WeatherMain>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherMainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherMain&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.seaLevel, seaLevel) || other.seaLevel == seaLevel)&&(identical(other.grndLevel, grndLevel) || other.grndLevel == grndLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,feelsLike,tempMin,tempMax,pressure,humidity,seaLevel,grndLevel);

@override
String toString() {
  return 'WeatherMain(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, seaLevel: $seaLevel, grndLevel: $grndLevel)';
}


}

/// @nodoc
abstract mixin class _$WeatherMainCopyWith<$Res> implements $WeatherMainCopyWith<$Res> {
  factory _$WeatherMainCopyWith(_WeatherMain value, $Res Function(_WeatherMain) _then) = __$WeatherMainCopyWithImpl;
@override @useResult
$Res call({
 double? temp,@JsonKey(name: 'feels_like') double? feelsLike,@JsonKey(name: 'temp_min') double? tempMin,@JsonKey(name: 'temp_max') double? tempMax, int? pressure, int? humidity,@JsonKey(name: 'sea_level') int? seaLevel,@JsonKey(name: 'grnd_level') int? grndLevel
});




}
/// @nodoc
class __$WeatherMainCopyWithImpl<$Res>
    implements _$WeatherMainCopyWith<$Res> {
  __$WeatherMainCopyWithImpl(this._self, this._then);

  final _WeatherMain _self;
  final $Res Function(_WeatherMain) _then;

/// Create a copy of WeatherMain
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temp = freezed,Object? feelsLike = freezed,Object? tempMin = freezed,Object? tempMax = freezed,Object? pressure = freezed,Object? humidity = freezed,Object? seaLevel = freezed,Object? grndLevel = freezed,}) {
  return _then(_WeatherMain(
temp: freezed == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double?,feelsLike: freezed == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double?,tempMin: freezed == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double?,tempMax: freezed == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double?,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int?,seaLevel: freezed == seaLevel ? _self.seaLevel : seaLevel // ignore: cast_nullable_to_non_nullable
as int?,grndLevel: freezed == grndLevel ? _self.grndLevel : grndLevel // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Wind {

 double? get speed; int? get deg; double? get gust;
/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WindCopyWith<Wind> get copyWith => _$WindCopyWithImpl<Wind>(this as Wind, _$identity);

  /// Serializes this Wind to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Wind&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.deg, deg) || other.deg == deg)&&(identical(other.gust, gust) || other.gust == gust));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed,deg,gust);

@override
String toString() {
  return 'Wind(speed: $speed, deg: $deg, gust: $gust)';
}


}

/// @nodoc
abstract mixin class $WindCopyWith<$Res>  {
  factory $WindCopyWith(Wind value, $Res Function(Wind) _then) = _$WindCopyWithImpl;
@useResult
$Res call({
 double? speed, int? deg, double? gust
});




}
/// @nodoc
class _$WindCopyWithImpl<$Res>
    implements $WindCopyWith<$Res> {
  _$WindCopyWithImpl(this._self, this._then);

  final Wind _self;
  final $Res Function(Wind) _then;

/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? speed = freezed,Object? deg = freezed,Object? gust = freezed,}) {
  return _then(_self.copyWith(
speed: freezed == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double?,deg: freezed == deg ? _self.deg : deg // ignore: cast_nullable_to_non_nullable
as int?,gust: freezed == gust ? _self.gust : gust // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Wind].
extension WindPatterns on Wind {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Wind value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Wind() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Wind value)  $default,){
final _that = this;
switch (_that) {
case _Wind():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Wind value)?  $default,){
final _that = this;
switch (_that) {
case _Wind() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? speed,  int? deg,  double? gust)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Wind() when $default != null:
return $default(_that.speed,_that.deg,_that.gust);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? speed,  int? deg,  double? gust)  $default,) {final _that = this;
switch (_that) {
case _Wind():
return $default(_that.speed,_that.deg,_that.gust);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? speed,  int? deg,  double? gust)?  $default,) {final _that = this;
switch (_that) {
case _Wind() when $default != null:
return $default(_that.speed,_that.deg,_that.gust);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Wind implements Wind {
   _Wind({required this.speed, required this.deg, required this.gust});
  factory _Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);

@override final  double? speed;
@override final  int? deg;
@override final  double? gust;

/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WindCopyWith<_Wind> get copyWith => __$WindCopyWithImpl<_Wind>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WindToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Wind&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.deg, deg) || other.deg == deg)&&(identical(other.gust, gust) || other.gust == gust));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speed,deg,gust);

@override
String toString() {
  return 'Wind(speed: $speed, deg: $deg, gust: $gust)';
}


}

/// @nodoc
abstract mixin class _$WindCopyWith<$Res> implements $WindCopyWith<$Res> {
  factory _$WindCopyWith(_Wind value, $Res Function(_Wind) _then) = __$WindCopyWithImpl;
@override @useResult
$Res call({
 double? speed, int? deg, double? gust
});




}
/// @nodoc
class __$WindCopyWithImpl<$Res>
    implements _$WindCopyWith<$Res> {
  __$WindCopyWithImpl(this._self, this._then);

  final _Wind _self;
  final $Res Function(_Wind) _then;

/// Create a copy of Wind
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? speed = freezed,Object? deg = freezed,Object? gust = freezed,}) {
  return _then(_Wind(
speed: freezed == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double?,deg: freezed == deg ? _self.deg : deg // ignore: cast_nullable_to_non_nullable
as int?,gust: freezed == gust ? _self.gust : gust // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$Rain {

@JsonKey(name: '1h') double? get h;
/// Create a copy of Rain
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RainCopyWith<Rain> get copyWith => _$RainCopyWithImpl<Rain>(this as Rain, _$identity);

  /// Serializes this Rain to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rain&&(identical(other.h, h) || other.h == h));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,h);

@override
String toString() {
  return 'Rain(h: $h)';
}


}

/// @nodoc
abstract mixin class $RainCopyWith<$Res>  {
  factory $RainCopyWith(Rain value, $Res Function(Rain) _then) = _$RainCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '1h') double? h
});




}
/// @nodoc
class _$RainCopyWithImpl<$Res>
    implements $RainCopyWith<$Res> {
  _$RainCopyWithImpl(this._self, this._then);

  final Rain _self;
  final $Res Function(Rain) _then;

/// Create a copy of Rain
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? h = freezed,}) {
  return _then(_self.copyWith(
h: freezed == h ? _self.h : h // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Rain].
extension RainPatterns on Rain {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Rain value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Rain() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Rain value)  $default,){
final _that = this;
switch (_that) {
case _Rain():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Rain value)?  $default,){
final _that = this;
switch (_that) {
case _Rain() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '1h')  double? h)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Rain() when $default != null:
return $default(_that.h);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '1h')  double? h)  $default,) {final _that = this;
switch (_that) {
case _Rain():
return $default(_that.h);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '1h')  double? h)?  $default,) {final _that = this;
switch (_that) {
case _Rain() when $default != null:
return $default(_that.h);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Rain implements Rain {
   _Rain({@JsonKey(name: '1h') required this.h});
  factory _Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);

@override@JsonKey(name: '1h') final  double? h;

/// Create a copy of Rain
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RainCopyWith<_Rain> get copyWith => __$RainCopyWithImpl<_Rain>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Rain&&(identical(other.h, h) || other.h == h));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,h);

@override
String toString() {
  return 'Rain(h: $h)';
}


}

/// @nodoc
abstract mixin class _$RainCopyWith<$Res> implements $RainCopyWith<$Res> {
  factory _$RainCopyWith(_Rain value, $Res Function(_Rain) _then) = __$RainCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '1h') double? h
});




}
/// @nodoc
class __$RainCopyWithImpl<$Res>
    implements _$RainCopyWith<$Res> {
  __$RainCopyWithImpl(this._self, this._then);

  final _Rain _self;
  final $Res Function(_Rain) _then;

/// Create a copy of Rain
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? h = freezed,}) {
  return _then(_Rain(
h: freezed == h ? _self.h : h // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$Snow {

@JsonKey(name: '1h') double? get h;
/// Create a copy of Snow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SnowCopyWith<Snow> get copyWith => _$SnowCopyWithImpl<Snow>(this as Snow, _$identity);

  /// Serializes this Snow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Snow&&(identical(other.h, h) || other.h == h));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,h);

@override
String toString() {
  return 'Snow(h: $h)';
}


}

/// @nodoc
abstract mixin class $SnowCopyWith<$Res>  {
  factory $SnowCopyWith(Snow value, $Res Function(Snow) _then) = _$SnowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '1h') double? h
});




}
/// @nodoc
class _$SnowCopyWithImpl<$Res>
    implements $SnowCopyWith<$Res> {
  _$SnowCopyWithImpl(this._self, this._then);

  final Snow _self;
  final $Res Function(Snow) _then;

/// Create a copy of Snow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? h = freezed,}) {
  return _then(_self.copyWith(
h: freezed == h ? _self.h : h // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Snow].
extension SnowPatterns on Snow {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Snow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Snow() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Snow value)  $default,){
final _that = this;
switch (_that) {
case _Snow():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Snow value)?  $default,){
final _that = this;
switch (_that) {
case _Snow() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '1h')  double? h)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Snow() when $default != null:
return $default(_that.h);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '1h')  double? h)  $default,) {final _that = this;
switch (_that) {
case _Snow():
return $default(_that.h);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '1h')  double? h)?  $default,) {final _that = this;
switch (_that) {
case _Snow() when $default != null:
return $default(_that.h);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Snow implements Snow {
   _Snow({@JsonKey(name: '1h') required this.h});
  factory _Snow.fromJson(Map<String, dynamic> json) => _$SnowFromJson(json);

@override@JsonKey(name: '1h') final  double? h;

/// Create a copy of Snow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SnowCopyWith<_Snow> get copyWith => __$SnowCopyWithImpl<_Snow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SnowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Snow&&(identical(other.h, h) || other.h == h));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,h);

@override
String toString() {
  return 'Snow(h: $h)';
}


}

/// @nodoc
abstract mixin class _$SnowCopyWith<$Res> implements $SnowCopyWith<$Res> {
  factory _$SnowCopyWith(_Snow value, $Res Function(_Snow) _then) = __$SnowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '1h') double? h
});




}
/// @nodoc
class __$SnowCopyWithImpl<$Res>
    implements _$SnowCopyWith<$Res> {
  __$SnowCopyWithImpl(this._self, this._then);

  final _Snow _self;
  final $Res Function(_Snow) _then;

/// Create a copy of Snow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? h = freezed,}) {
  return _then(_Snow(
h: freezed == h ? _self.h : h // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$Clouds {

 int? get all;
/// Create a copy of Clouds
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CloudsCopyWith<Clouds> get copyWith => _$CloudsCopyWithImpl<Clouds>(this as Clouds, _$identity);

  /// Serializes this Clouds to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Clouds&&(identical(other.all, all) || other.all == all));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,all);

@override
String toString() {
  return 'Clouds(all: $all)';
}


}

/// @nodoc
abstract mixin class $CloudsCopyWith<$Res>  {
  factory $CloudsCopyWith(Clouds value, $Res Function(Clouds) _then) = _$CloudsCopyWithImpl;
@useResult
$Res call({
 int? all
});




}
/// @nodoc
class _$CloudsCopyWithImpl<$Res>
    implements $CloudsCopyWith<$Res> {
  _$CloudsCopyWithImpl(this._self, this._then);

  final Clouds _self;
  final $Res Function(Clouds) _then;

/// Create a copy of Clouds
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? all = freezed,}) {
  return _then(_self.copyWith(
all: freezed == all ? _self.all : all // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Clouds].
extension CloudsPatterns on Clouds {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Clouds value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Clouds() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Clouds value)  $default,){
final _that = this;
switch (_that) {
case _Clouds():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Clouds value)?  $default,){
final _that = this;
switch (_that) {
case _Clouds() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? all)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Clouds() when $default != null:
return $default(_that.all);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? all)  $default,) {final _that = this;
switch (_that) {
case _Clouds():
return $default(_that.all);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? all)?  $default,) {final _that = this;
switch (_that) {
case _Clouds() when $default != null:
return $default(_that.all);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Clouds implements Clouds {
   _Clouds({required this.all});
  factory _Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);

@override final  int? all;

/// Create a copy of Clouds
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CloudsCopyWith<_Clouds> get copyWith => __$CloudsCopyWithImpl<_Clouds>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CloudsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Clouds&&(identical(other.all, all) || other.all == all));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,all);

@override
String toString() {
  return 'Clouds(all: $all)';
}


}

/// @nodoc
abstract mixin class _$CloudsCopyWith<$Res> implements $CloudsCopyWith<$Res> {
  factory _$CloudsCopyWith(_Clouds value, $Res Function(_Clouds) _then) = __$CloudsCopyWithImpl;
@override @useResult
$Res call({
 int? all
});




}
/// @nodoc
class __$CloudsCopyWithImpl<$Res>
    implements _$CloudsCopyWith<$Res> {
  __$CloudsCopyWithImpl(this._self, this._then);

  final _Clouds _self;
  final $Res Function(_Clouds) _then;

/// Create a copy of Clouds
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? all = freezed,}) {
  return _then(_Clouds(
all: freezed == all ? _self.all : all // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Sys {

 int? get type; int? get id; String? get country; double? get sunrise; double? get sunset;
/// Create a copy of Sys
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SysCopyWith<Sys> get copyWith => _$SysCopyWithImpl<Sys>(this as Sys, _$identity);

  /// Serializes this Sys to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sys&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.country, country) || other.country == country)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id,country,sunrise,sunset);

@override
String toString() {
  return 'Sys(type: $type, id: $id, country: $country, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class $SysCopyWith<$Res>  {
  factory $SysCopyWith(Sys value, $Res Function(Sys) _then) = _$SysCopyWithImpl;
@useResult
$Res call({
 int? type, int? id, String? country, double? sunrise, double? sunset
});




}
/// @nodoc
class _$SysCopyWithImpl<$Res>
    implements $SysCopyWith<$Res> {
  _$SysCopyWithImpl(this._self, this._then);

  final Sys _self;
  final $Res Function(Sys) _then;

/// Create a copy of Sys
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? id = freezed,Object? country = freezed,Object? sunrise = freezed,Object? sunset = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,sunrise: freezed == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as double?,sunset: freezed == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Sys].
extension SysPatterns on Sys {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sys value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sys() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sys value)  $default,){
final _that = this;
switch (_that) {
case _Sys():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sys value)?  $default,){
final _that = this;
switch (_that) {
case _Sys() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? type,  int? id,  String? country,  double? sunrise,  double? sunset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sys() when $default != null:
return $default(_that.type,_that.id,_that.country,_that.sunrise,_that.sunset);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? type,  int? id,  String? country,  double? sunrise,  double? sunset)  $default,) {final _that = this;
switch (_that) {
case _Sys():
return $default(_that.type,_that.id,_that.country,_that.sunrise,_that.sunset);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? type,  int? id,  String? country,  double? sunrise,  double? sunset)?  $default,) {final _that = this;
switch (_that) {
case _Sys() when $default != null:
return $default(_that.type,_that.id,_that.country,_that.sunrise,_that.sunset);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sys implements Sys {
   _Sys({required this.type, required this.id, required this.country, required this.sunrise, required this.sunset});
  factory _Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);

@override final  int? type;
@override final  int? id;
@override final  String? country;
@override final  double? sunrise;
@override final  double? sunset;

/// Create a copy of Sys
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SysCopyWith<_Sys> get copyWith => __$SysCopyWithImpl<_Sys>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SysToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sys&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.country, country) || other.country == country)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id,country,sunrise,sunset);

@override
String toString() {
  return 'Sys(type: $type, id: $id, country: $country, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class _$SysCopyWith<$Res> implements $SysCopyWith<$Res> {
  factory _$SysCopyWith(_Sys value, $Res Function(_Sys) _then) = __$SysCopyWithImpl;
@override @useResult
$Res call({
 int? type, int? id, String? country, double? sunrise, double? sunset
});




}
/// @nodoc
class __$SysCopyWithImpl<$Res>
    implements _$SysCopyWith<$Res> {
  __$SysCopyWithImpl(this._self, this._then);

  final _Sys _self;
  final $Res Function(_Sys) _then;

/// Create a copy of Sys
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? id = freezed,Object? country = freezed,Object? sunrise = freezed,Object? sunset = freezed,}) {
  return _then(_Sys(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,sunrise: freezed == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as double?,sunset: freezed == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
