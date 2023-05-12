import 'package:cgc_ecom_final/model/category.dart';
import 'package:cgc_ecom_final/service/local_service/local_category_service.dart';
import 'package:cgc_ecom_final/service/remote_service/remote_category_service.dart';
import 'package:get/get.dart';


class CategoryController extends GetxController {
  static CategoryController instance = Get.find();

  RxList<Category> categoryList = List<Category>.empty(growable: true).obs;
  final LocalCategoryService _localCategoryService = LocalCategoryService();
  RxBool isCategoryLoading = false.obs;


  @override
  void onInit() async {
    await _localCategoryService.init();
    getCategories();
    super.onInit();
  }

  void getCategories() async {
    try {
      isCategoryLoading(true);
      if(_localCategoryService.getCategories().isNotEmpty){
        categoryList.assignAll(_localCategoryService.getCategories());
      }
      var result = await RemoteCategoryService().get();
      if(result != null) {
        categoryList.assignAll(categoryListFromJson(result.body));
      _localCategoryService.assignAllCategory(categories: categoryListFromJson(result.body));
      }

    }finally{
      isCategoryLoading(false);


    }
  }

}