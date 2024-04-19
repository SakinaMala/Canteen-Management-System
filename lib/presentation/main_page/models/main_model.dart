import '../../../core/app_export.dart';
import 'productcard_item_model.dart';

/// This class defines the variables used in the [main_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MainModel {
  Rx<List<ProductcardItemModel>> productcardItemList = Rx([
    ProductcardItemModel(
        itemImage: ImageConstant.imgRectangle15.obs,
        itemname1: "Item Name".obs,
        itemname2: "Item Name".obs,
        itemprice1: "Price ".obs,
        itemprice2: "Price ".obs),
    ProductcardItemModel(
        itemImage: ImageConstant.imgRectangle15103x119.obs,
        itemname1: "Item Name".obs,
        itemname2: "Item Name".obs,
        itemprice1: "Price ".obs,
        itemprice2: "Price ".obs)
  ]);
}
