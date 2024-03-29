
import 'package:cgc_ecom_final/model/category.dart';
import 'package:hive/hive.dart';

class LocalCategoryService {
  late Box<Category> _popularCategoryBox;
  late Box<Category> _categoryBox;

  Future<void> init() async {
    _popularCategoryBox = await Hive.openBox<Category>('PopularCategories');
    _categoryBox = await Hive.openBox<Category>('Categories');
  }

  Future<void> assignAllPopularCategory({required List<Category> popularCategories}) async {
    await _popularCategoryBox.clear();
    await _popularCategoryBox.addAll(popularCategories);
  }

  Future<void> assignAllCategory({required List<Category> categories}) async {
    await _categoryBox.clear();
    await _categoryBox.addAll(categories);
  }

  List<Category> getPopularCategories() => _popularCategoryBox.values.toList();
  List<Category> getCategories() => _categoryBox.values.toList();

}