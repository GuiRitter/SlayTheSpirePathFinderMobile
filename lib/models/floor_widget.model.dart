import 'package:slay_the_spire_path_finder_mobile/constants/floor.enum.dart';

class FloorWidgetModel {
  final FloorEnum kind;
  final double x;
  final double y;

  FloorWidgetModel({
    required this.kind,
    required this.x,
    required this.y,
  });

  @override
  int get hashCode => kind.hashCode ^ x.hashCode ^ y.hashCode;

  @override
  bool operator ==(
    Object other,
  ) {
    if (other is! FloorWidgetModel) {
      return false;
    }
    return (kind == other.kind) &&
        ((x - other.x).abs() < 16) &&
        ((y - other.y).abs() < 16);
  }
}