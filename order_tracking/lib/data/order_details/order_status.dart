import 'package:freezed_annotation/freezed_annotation.dart';

///@author Jalal Addin Okbi

enum OrderStatus {
  @JsonValue(0)
  preparingKnives('Honing The Knives'),
  @JsonValue(1)
  cuttingVegetables('Cutting Vegetables'),
  @JsonValue(2)
  cuttingMeat('Cutting Meat'),
  @JsonValue(3)
  cuttingChicken('Cutting chicken'),
  @JsonValue(4)
  onStove('Order on Fire!'),
  @JsonValue(5)
  inOven('Making it crispy!'),
  @JsonValue(6)
  addingButter('Adding Butter'),
  @JsonValue(7)
  packaging('Packaging!'),
  @JsonValue(8)
  onTheRun('Order on the run');

  const OrderStatus(this.desc);
  final String desc;
}
