import '../../../core/app_export.dart';

/// This class is used in the [itemdetails_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ItemdetailsItemModel {
  ItemdetailsItemModel(
      {this.itemImage,
      this.itemname1,
      this.itemname2,
      this.itemprice1,
      this.itemprice2,
      this.id}) {
    itemImage = itemImage ?? Rx(ImageConstant.imgRectangle15108x130);
    itemname1 = itemname1 ?? Rx("Item Name");
    itemname2 = itemname2 ?? Rx("Item Name");
    itemprice1 = itemprice1 ?? Rx("Price ");
    itemprice2 = itemprice2 ?? Rx("Price ");
    id = id ?? Rx("");
  }

  Rx<String>? itemImage;

  Rx<String>? itemname1;

  Rx<String>? itemname2;

  Rx<String>? itemprice1;

  Rx<String>? itemprice2;

  Rx<String>? id;
}
