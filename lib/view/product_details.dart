import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:givestarreviews/givestarreviews.dart';
import 'package:html/parser.dart';
import 'package:oriflame_app/model/product_details_model.dart';
import 'package:oriflame_app/repository/notifier.dart';

///Product detail page
class ProductDetailPage extends ConsumerWidget {
  const ProductDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //product details notifier provider
    final productDetails = ref.watch(
      dataNotifierProvider(
        'https://oriflamenepal.com/api/product/for-public/smart-sync-lipstick-233',
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: productDetails.productDetails.when(
          data: (data) {
            final document = parse(data.data?.description ?? '');
            return Column(
              children: [
                ProductImagesWidget(
                  data: data,
                  productDetails: productDetails,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductInfoWidget(
                        productDetails: productDetails,
                        data: data,
                      ),
                      const SizedBox(height: 12),
                      ProductColorSelectorWidget(
                        data: data,
                        productDetails: productDetails,
                      ),
                      const SizedBox(height: 20),
                      ProductCountWidget(
                        productDetails: productDetails,
                      ),
                      const SizedBox(height: 15),
                      Text(document.body?.text ?? ''),
                      const SizedBox(height: 25),
                      const AddToCartButtonWidget(),
                      const SizedBox(height: 85),
                    ],
                  ),
                ),
              ],
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stackTrace) => Center(
            child: Text('Error: $error'),
          ),
        ),
      ),
      floatingActionButton: const SendSellerMessageWidget(),
    );
  }
}

//Product images widget
class ProductImagesWidget extends StatelessWidget {
  const ProductImagesWidget({
    super.key,
    required this.productDetails,
    required this.data,
  });

  final DataNotifier productDetails;
  final ProductDetailsModel data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
            data.data?.images?[productDetails.selectedImageIndex] ?? ''),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: data.data?.images?.map((e) {
                  return GestureDetector(
                    onTap: () => productDetails.selectedImageIndex =
                        data.data?.images?.indexOf(e) ?? 0,
                    child: Container(
                      height: 42,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          width: 1.2,
                          color: Colors.grey.shade400,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 0.5,
                            blurRadius: 6,
                            offset: Offset(
                              4,
                              4,
                            ),
                          ),
                        ],
                      ),
                      child: Image.network(e),
                    ),
                  );
                }).toList() ??
                [],
          ),
        ),
      ],
    );
  }
}

//Send seller message widget
class SendSellerMessageWidget extends StatelessWidget {
  const SendSellerMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //show bottom sheet for message seller
    void bottomSheet() {
      final border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
      );

      showModalBottomSheet(
        backgroundColor: Colors.white,
        useSafeArea: true,
        isScrollControlled: true,
        showDragHandle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/oriflame.png',
                  width: 200,
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'If there is anything that you want to know about the product in details. Write your queries and message to seller.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.grey.shade800,
                          letterSpacing: 0.2,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: TextField(
                          maxLines: null,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(28, 20, 12, 12),
                            labelText: "Message",
                            focusedBorder: border,
                            enabledBorder: border,
                            errorBorder: border,
                            border: border,
                            disabledBorder: border,
                            focusedErrorBorder: border,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Send Messsage',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return FloatingActionButton(
      backgroundColor: Colors.green,
      onPressed: () => bottomSheet(),
      tooltip: 'Send Message',
      child: const Icon(
        Icons.message,
        color: Colors.white,
      ),
    );
  }
}

//Product count widget [increment, decrement]
class ProductCountWidget extends StatelessWidget {
  const ProductCountWidget({
    super.key,
    required this.productDetails,
  });

  final DataNotifier productDetails;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton.filledTonal(
          iconSize: 26,
          onPressed: () => productDetails.counter--,
          icon: const Icon(Icons.remove),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: Text(
            productDetails.counter.toString(),
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        IconButton.filledTonal(
          iconSize: 26,
          onPressed: () => productDetails.counter++,
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}

//Product info widget [brand, title, price, discount, reviews]
class ProductInfoWidget extends StatelessWidget {
  const ProductInfoWidget({
    super.key,
    required this.productDetails,
    required this.data,
  });

  final DataNotifier productDetails;
  final ProductDetailsModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.data?.brand?.name ?? '',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).primaryColor,
            fontSize: 14,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data.data?.title ?? '',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.grey.shade700,
                fontSize: 26,
              ),
            ),
            Text(
              'Rs. ${productDetails.colorVariants?.price ?? data.data?.price}'
                  .toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.3,
                  color: Theme.of(context).primaryColor,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                '${productDetails.colorVariants?.offPercent ?? data.data?.offPercent}% OFF'
                    .toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
            Text(
              'Rs. ${productDetails.colorVariants?.strikePrice ?? data.data?.strikePrice}'
                  .toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: StarRating(onChanged: (rate) {}),
        ),
      ],
    );
  }
}

///Product color selector widget
class ProductColorSelectorWidget extends StatelessWidget {
  const ProductColorSelectorWidget({
    super.key,
    required this.productDetails,
    required this.data,
  });

  final DataNotifier productDetails;
  final ProductDetailsModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Color (${productDetails.colorVariants?.color?.name})',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 4),
        data.data?.colorVariants?.isNotEmpty ?? false
            ? Wrap(
                spacing: 8,
                children: data.data?.colorVariants?.map((e) {
                      var colorCode =
                          e.color?.colorValue?.first.split('#').last;
                      return GestureDetector(
                        onTap: () => productDetails.colorVariants = e,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          margin: const EdgeInsets.all(2),
                          decoration: productDetails.colorVariants?.id == e.id
                              ? BoxDecoration(
                                  border: Border.all(
                                    width: 1.4,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade400,
                                        spreadRadius: 0.5,
                                        blurRadius: 15,
                                        offset: const Offset(
                                          0,
                                          15,
                                        ),
                                      ).scale(0.5),
                                    ])
                              : null,
                          child: CircleAvatar(
                            backgroundColor: Color(
                              int.parse('0xFF$colorCode'),
                            ),
                            radius: 12,
                          ),
                        ),
                      );
                    }).toList() ??
                    [],
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}

///Add to cart button widget
class AddToCartButtonWidget extends StatelessWidget {
  const AddToCartButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).hintColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(06),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'ADD TO CART',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
