import '../../../core/app_export.dart';
import 'chipviewcafe_item_model.dart';
import 'itemdetails_item_model.dart';

/// This class defines the variables used in the [android_small_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AndroidSmallOneModel {
  Rx<List<ChipviewcafeItemModel>> chipviewcafeItemList =
      Rx(List.generate(6, (index) => ChipviewcafeItemModel()));

  Rx<List<ItemdetailsItemModel>> itemdetailsItemList = Rx([
    ItemdetailsItemModel(
        itemImage: ImageConstant.imgRectangle15108x130.obs,
        itemname1: "Item Name".obs,
        itemname2: "Item Name".obs,
        itemprice1: "Price ".obs,
        itemprice2: "Price ".obs),
    ItemdetailsItemModel(
        itemImage: ImageConstant.imgRectangle151.obs,
        itemname1: "Item Name".obs,
        itemname2: "Item Name".obs,
        itemprice1: "Price ".obs,
        itemprice2: "Price ".obs)
  ]);
}
