import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oriflame_app/model/product_details_model.dart';
import 'package:oriflame_app/utils/api_service.dart';

final dataNotifierProvider =
    ChangeNotifierProvider.family.autoDispose<DataNotifier, String>(
  (ref, url) => DataNotifier(url: url),
);

//DataNotifier class for fetching data from api
class DataNotifier extends ChangeNotifier {
  DataNotifier({required this.url}) {
    fetchProductDetails(url);
  }

  final String url;

  //data service instance
  final ApiService _apiService = ApiService();

  //data details
  AsyncValue<ProductDetailsModel> productDetails = const AsyncLoading();

  //state for color selection
  ColorVariants? _colorVariants;

  ColorVariants? get colorVariants => _colorVariants;

  set colorVariants(ColorVariants? value) {
    _counter = 1;
    _colorVariants = value;
    notifyListeners();
  }

  //for stock counter
  int _counter = 1;

  int get counter => _counter;

  set counter(int value) {
    if (value > 0) {
      _counter = value;
      notifyListeners();
    }
  }

  //for product image selection
  int _selectedImageIndex = 0;

  int get selectedImageIndex => _selectedImageIndex;

  set selectedImageIndex(int value) {
    _selectedImageIndex = value;
    notifyListeners();
  }

  //fetch data from api
  Future<void> fetchProductDetails(String url) async {
    try {
      final detailsResponse = await _apiService.getProductData(url);
      final newResponse = ProductDetailsModel.fromJson(detailsResponse);
      productDetails = AsyncValue.data(newResponse);
      colorVariants = newResponse.data?.colorVariants?.first;
    } catch (e) {
      productDetails = AsyncValue.error(e.toString(), StackTrace.current);
    }
    notifyListeners();
  }
}
