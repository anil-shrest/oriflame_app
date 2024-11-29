///Product detail properties model class
class ProductDetailsModel {
  final String? title;
  final String? message;
  final Data? data;
  const ProductDetailsModel({this.title, this.message, this.data});
  ProductDetailsModel copyWith({String? title, String? message, Data? data}) {
    return ProductDetailsModel(
        title: title ?? this.title,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  Map<String, Object?> toJson() {
    return {'title': title, 'message': message, 'data': data?.toJson()};
  }

  static ProductDetailsModel fromJson(Map<String, Object?> json) {
    return ProductDetailsModel(
        title: json['title'] == null ? null : json['title'] as String,
        message: json['message'] == null ? null : json['message'] as String,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''ProductDetailsModel(
                title:$title,
message:$message,
data:${data.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is ProductDetailsModel &&
        other.runtimeType == runtimeType &&
        other.title == title &&
        other.message == message &&
        other.data == data;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, title, message, data);
  }
}

class Data {
  final String? id;
  final String? slug;
  final Category? category;
  final Brand? brand;
  final String? title;
  final String? ingredient;
  final String? howToUse;
  final String? description;
  final int? price;
  final int? rewardPoint;
  final int? commissionPercentage;
  final int? strikePrice;
  final int? offPercent;
  final int? minOrder;
  final int? maxOrder;
  final bool? status;
  final List<dynamic>? images;
  final List<ColorAttributes>? colorAttributes;
  final List<dynamic>? sizeAttributes;
  final String? variantType;
  final List<ColorVariants>? colorVariants;
  final int? ratings;
  final int? totalRatings;
  final int? ratedBy;
  final FilterOptions? filterOptions;
  final String? metaRobots;
  final bool? isTodaysDeal;
  final bool? isFeatured;
  final bool? isPublished;
  final String? searchWords;
  final bool? isDeleted;
  final List<dynamic>? sizeVariants;
  final String? createdAt;
  final String? updatedAt;
  final int? V;
  final String? noneText;
  final List<BreadCrums>? breadCrums;
  final bool? wished;
  const Data(
      {this.id,
      this.slug,
      this.category,
      this.brand,
      this.title,
      this.ingredient,
      this.howToUse,
      this.description,
      this.price,
      this.rewardPoint,
      this.commissionPercentage,
      this.strikePrice,
      this.offPercent,
      this.minOrder,
      this.maxOrder,
      this.status,
      this.images,
      this.colorAttributes,
      this.sizeAttributes,
      this.variantType,
      this.colorVariants,
      this.ratings,
      this.totalRatings,
      this.ratedBy,
      this.filterOptions,
      this.metaRobots,
      this.isTodaysDeal,
      this.isFeatured,
      this.isPublished,
      this.searchWords,
      this.isDeleted,
      this.sizeVariants,
      this.createdAt,
      this.updatedAt,
      this.V,
      this.noneText,
      this.breadCrums,
      this.wished});
  Data copyWith(
      {String? id,
      String? slug,
      Category? category,
      Brand? brand,
      String? title,
      String? ingredient,
      String? howToUse,
      String? description,
      int? price,
      int? rewardPoint,
      int? commissionPercentage,
      int? strikePrice,
      int? offPercent,
      int? minOrder,
      int? maxOrder,
      bool? status,
      List<dynamic>? images,
      List<ColorAttributes>? colorAttributes,
      List<dynamic>? sizeAttributes,
      String? variantType,
      List<ColorVariants>? colorVariants,
      int? ratings,
      int? totalRatings,
      int? ratedBy,
      FilterOptions? filterOptions,
      String? metaRobots,
      bool? isTodaysDeal,
      bool? isFeatured,
      bool? isPublished,
      String? searchWords,
      bool? isDeleted,
      List<dynamic>? sizeVariants,
      String? createdAt,
      String? updatedAt,
      int? V,
      String? noneText,
      List<BreadCrums>? breadCrums,
      bool? wished}) {
    return Data(
        id: id ?? this.id,
        slug: slug ?? this.slug,
        category: category ?? this.category,
        brand: brand ?? this.brand,
        title: title ?? this.title,
        ingredient: ingredient ?? this.ingredient,
        howToUse: howToUse ?? this.howToUse,
        description: description ?? this.description,
        price: price ?? this.price,
        rewardPoint: rewardPoint ?? this.rewardPoint,
        commissionPercentage: commissionPercentage ?? this.commissionPercentage,
        strikePrice: strikePrice ?? this.strikePrice,
        offPercent: offPercent ?? this.offPercent,
        minOrder: minOrder ?? this.minOrder,
        maxOrder: maxOrder ?? this.maxOrder,
        status: status ?? this.status,
        images: images ?? this.images,
        colorAttributes: colorAttributes ?? this.colorAttributes,
        sizeAttributes: sizeAttributes ?? this.sizeAttributes,
        variantType: variantType ?? this.variantType,
        colorVariants: colorVariants ?? this.colorVariants,
        ratings: ratings ?? this.ratings,
        totalRatings: totalRatings ?? this.totalRatings,
        ratedBy: ratedBy ?? this.ratedBy,
        filterOptions: filterOptions ?? this.filterOptions,
        metaRobots: metaRobots ?? this.metaRobots,
        isTodaysDeal: isTodaysDeal ?? this.isTodaysDeal,
        isFeatured: isFeatured ?? this.isFeatured,
        isPublished: isPublished ?? this.isPublished,
        searchWords: searchWords ?? this.searchWords,
        isDeleted: isDeleted ?? this.isDeleted,
        sizeVariants: sizeVariants ?? this.sizeVariants,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        V: V ?? this.V,
        noneText: noneText ?? this.noneText,
        breadCrums: breadCrums ?? this.breadCrums,
        wished: wished ?? this.wished);
  }

  Map<String, Object?> toJson() {
    return {
      '_id': id,
      'slug': slug,
      'category': category?.toJson(),
      'brand': brand?.toJson(),
      'title': title,
      'ingredient': ingredient,
      'howToUse': howToUse,
      'description': description,
      'price': price,
      'rewardPoint': rewardPoint,
      'commissionPercentage': commissionPercentage,
      'strikePrice': strikePrice,
      'offPercent': offPercent,
      'minOrder': minOrder,
      'maxOrder': maxOrder,
      'status': status,
      'images': (images as List<dynamic>?)?.map((e) => e as String).toList(),
      'colorAttributes': colorAttributes
          ?.map<Map<String, dynamic>>((data) => data.toJson())
          .toList(),
      'sizeAttributes': sizeAttributes,
      'variantType': variantType,
      'colorVariants': colorVariants
          ?.map<Map<String, dynamic>>((data) => data.toJson())
          .toList(),
      'ratings': ratings,
      'totalRatings': totalRatings,
      'ratedBy': ratedBy,
      'filterOptions': filterOptions?.toJson(),
      'metaRobots': metaRobots,
      'isTodaysDeal': isTodaysDeal,
      'isFeatured': isFeatured,
      'isPublished': isPublished,
      'searchWords': searchWords,
      'isDeleted': isDeleted,
      'sizeVariants': sizeVariants,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      '__v': V,
      'noneText': noneText,
      'breadCrums': breadCrums
          ?.map<Map<String, dynamic>>((data) => data.toJson())
          .toList(),
      'wished': wished
    };
  }

  static Data fromJson(Map<String, Object?> json) {
    return Data(
        id: json['_id'] == null ? null : json['_id'] as String,
        slug: json['slug'] == null ? null : json['slug'] as String,
        category: json['category'] == null
            ? null
            : Category.fromJson(json['category'] as Map<String, Object?>),
        brand: json['brand'] == null
            ? null
            : Brand.fromJson(json['brand'] as Map<String, Object?>),
        title: json['title'] == null ? null : json['title'] as String,
        ingredient:
            json['ingredient'] == null ? null : json['ingredient'] as String,
        howToUse: json['howToUse'] == null ? null : json['howToUse'] as String,
        description:
            json['description'] == null ? null : json['description'] as String,
        price: json['price'] == null ? null : json['price'] as int,
        rewardPoint:
            json['rewardPoint'] == null ? null : json['rewardPoint'] as int,
        commissionPercentage: json['commissionPercentage'] == null
            ? null
            : json['commissionPercentage'] as int,
        strikePrice:
            json['strikePrice'] == null ? null : json['strikePrice'] as int,
        offPercent:
            json['offPercent'] == null ? null : json['offPercent'] as int,
        minOrder: json['minOrder'] == null ? null : json['minOrder'] as int,
        maxOrder: json['maxOrder'] == null ? null : json['maxOrder'] as int,
        status: json['status'] == null ? null : json['status'] as bool,
        images: json['images'] == null ? null : json['images'] as List<dynamic>,
        colorAttributes: json['colorAttributes'] == null
            ? null
            : (json['colorAttributes'] as List)
                .map<ColorAttributes>((data) =>
                    ColorAttributes.fromJson(data as Map<String, Object?>))
                .toList(),
        sizeAttributes: json['sizeAttributes'] == null
            ? null
            : json['sizeAttributes'] as List<dynamic>,
        variantType:
            json['variantType'] == null ? null : json['variantType'] as String,
        colorVariants: json['colorVariants'] == null
            ? null
            : (json['colorVariants'] as List)
                .map<ColorVariants>((data) =>
                    ColorVariants.fromJson(data as Map<String, Object?>))
                .toList(),
        ratings: json['ratings'] == null ? null : json['ratings'] as int,
        totalRatings:
            json['totalRatings'] == null ? null : json['totalRatings'] as int,
        ratedBy: json['ratedBy'] == null ? null : json['ratedBy'] as int,
        filterOptions: json['filterOptions'] == null
            ? null
            : FilterOptions.fromJson(
                json['filterOptions'] as Map<String, Object?>),
        metaRobots:
            json['metaRobots'] == null ? null : json['metaRobots'] as String,
        isTodaysDeal:
            json['isTodaysDeal'] == null ? null : json['isTodaysDeal'] as bool,
        isFeatured:
            json['isFeatured'] == null ? null : json['isFeatured'] as bool,
        isPublished:
            json['isPublished'] == null ? null : json['isPublished'] as bool,
        searchWords:
            json['searchWords'] == null ? null : json['searchWords'] as String,
        isDeleted: json['isDeleted'] == null ? null : json['isDeleted'] as bool,
        sizeVariants: json['sizeVariants'] == null
            ? null
            : json['sizeVariants'] as List<dynamic>,
        createdAt: json['createdAt'] == null ? null : json['createdAt'] as String,
        updatedAt: json['updatedAt'] == null ? null : json['updatedAt'] as String,
        V: json['__v'] == null ? null : json['__v'] as int,
        noneText: json['noneText'] == null ? null : json['noneText'] as String,
        breadCrums: json['breadCrums'] == null ? null : (json['breadCrums'] as List).map<BreadCrums>((data) => BreadCrums.fromJson(data as Map<String, Object?>)).toList(),
        wished: json['wished'] == null ? null : json['wished'] as bool);
  }

  @override
  String toString() {
    return '''Data(
                id:$id,
slug:$slug,
category:${category.toString()},
brand:${brand.toString()},
title:$title,
ingredient:$ingredient,
howToUse:$howToUse,
description:$description,
price:$price,
rewardPoint:$rewardPoint,
commissionPercentage:$commissionPercentage,
strikePrice:$strikePrice,
offPercent:$offPercent,
minOrder:$minOrder,
maxOrder:$maxOrder,
status:$status,
images:$images,
colorAttributes:${colorAttributes.toString()},
sizeAttributes:$sizeAttributes,
variantType:$variantType,
colorVariants:${colorVariants.toString()},
ratings:$ratings,
totalRatings:$totalRatings,
ratedBy:$ratedBy,
filterOptions:${filterOptions.toString()},
metaRobots:$metaRobots,
isTodaysDeal:$isTodaysDeal,
isFeatured:$isFeatured,
isPublished:$isPublished,
searchWords:$searchWords,
isDeleted:$isDeleted,
sizeVariants:$sizeVariants,
createdAt:$createdAt,
updatedAt:$updatedAt,
V:$V,
noneText:$noneText,
breadCrums:${breadCrums.toString()},
wished:$wished
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Data &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.slug == slug &&
        other.category == category &&
        other.brand == brand &&
        other.title == title &&
        other.ingredient == ingredient &&
        other.howToUse == howToUse &&
        other.description == description &&
        other.price == price &&
        other.rewardPoint == rewardPoint &&
        other.commissionPercentage == commissionPercentage &&
        other.strikePrice == strikePrice &&
        other.offPercent == offPercent &&
        other.minOrder == minOrder &&
        other.maxOrder == maxOrder &&
        other.status == status &&
        other.images == images &&
        other.colorAttributes == colorAttributes &&
        other.sizeAttributes == sizeAttributes &&
        other.variantType == variantType &&
        other.colorVariants == colorVariants &&
        other.ratings == ratings &&
        other.totalRatings == totalRatings &&
        other.ratedBy == ratedBy &&
        other.filterOptions == filterOptions &&
        other.metaRobots == metaRobots &&
        other.isTodaysDeal == isTodaysDeal &&
        other.isFeatured == isFeatured &&
        other.isPublished == isPublished &&
        other.searchWords == searchWords &&
        other.isDeleted == isDeleted &&
        other.sizeVariants == sizeVariants &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.V == V &&
        other.noneText == noneText &&
        other.breadCrums == breadCrums &&
        other.wished == wished;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        id,
        slug,
        category,
        brand,
        title,
        ingredient,
        howToUse,
        description,
        price,
        rewardPoint,
        commissionPercentage,
        strikePrice,
        offPercent,
        minOrder,
        maxOrder,
        status,
        images,
        colorAttributes,
        sizeAttributes);
  }
}

class BreadCrums {
  final String? title;
  final String? slug;
  const BreadCrums({this.title, this.slug});
  BreadCrums copyWith({String? title, String? slug}) {
    return BreadCrums(title: title ?? this.title, slug: slug ?? this.slug);
  }

  Map<String, Object?> toJson() {
    return {'title': title, 'slug': slug};
  }

  static BreadCrums fromJson(Map<String, Object?> json) {
    return BreadCrums(
        title: json['title'] == null ? null : json['title'] as String,
        slug: json['slug'] == null ? null : json['slug'] as String);
  }

  @override
  String toString() {
    return '''BreadCrums(
                title:$title,
slug:$slug
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is BreadCrums &&
        other.runtimeType == runtimeType &&
        other.title == title &&
        other.slug == slug;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, title, slug);
  }
}

class FilterOptions {
  final bool? age12;
  final bool? age20;
  final bool? age30;
  final bool? age40;
  final bool? age50;
  final bool? benefitsAntiAgeing;
  final bool? benefitsAntiShine;
  final bool? benefitsBrightning;
  final bool? benefitsBronzing;
  final bool? benefitsCooling;
  final bool? benefitsConcealing;
  final bool? benefitsConditioning;
  final bool? benefitsCurling;
  final bool? benefitsDefining;
  final bool? benefitsEnergising;
  final bool? benefitsEvenSkinTone;
  final bool? benefitsExfoliating;
  final bool? benefitsFilling;
  final bool? benefitsGrowthBoosting;
  final bool? benefitsHydrating;
  final bool? benefitsLengthening;
  final bool? benefitsLongLasting;
  final bool? benefitsMattifing;
  final bool? benefitsMoisturing;
  final bool? benefitsNourishing;
  final bool? benefitsProtecting;
  final bool? benefitsQuickDry;
  final bool? benefitsRevitalising;
  final bool? benefitsSculpting;
  final bool? benefitsSmoothing;
  final bool? benefitsThickening;
  final bool? benefitsTransferProof;
  final bool? benefitsVolumising;
  final bool? benefitsWaterproof;
  final bool? colorRed;
  final String? colorRedHex;
  final bool? colorBlue;
  final String? colorBlueHex;
  final bool? colorPink;
  final String? colorPinkHex;
  final bool? colorBlack;
  final String? colorBlackHex;
  final bool? colorBrown;
  final String? colorBrownHex;
  final bool? colorGrey;
  final String? colorGreyHex;
  final bool? colorGreen;
  final String? colorGreenHex;
  final bool? colorBurgundy;
  final String? colorBurgundyHex;
  final bool? colorPurple;
  final String? colorPurpleHex;
  final bool? coverageHigh;
  final bool? coverageLight;
  final bool? coverageMedium;
  final bool? finishCreamy;
  final bool? finishGlossy;
  final bool? finishLuminious;
  final bool? finishMalte;
  final bool? finishMetaallic;
  final bool? finishNatural;
  final bool? finishSatin;
  final bool? finishSheer;
  final bool? finishShimmer;
  final bool? finishShine;
  final bool? formulationGel;
  final bool? formulationLiquid;
  final bool? formulationPencil;
  final bool? formulationPowder;
  final bool? formulationStick;
  final bool? formulationWax;
  final bool? formulationCream;
  final bool? formulationLipBalm;
  final bool? formulationLoose;
  final bool? formulationPearls;
  final bool? formulationPressed;
  final bool? formulationSerum;
  final bool? skinTypeCombination;
  final bool? skinTypeDry;
  final bool? skinTypeNormal;
  final bool? skinTypeOily;
  final bool? skinTypeSensitive;
  const FilterOptions(
      {this.age12,
      this.age20,
      this.age30,
      this.age40,
      this.age50,
      this.benefitsAntiAgeing,
      this.benefitsAntiShine,
      this.benefitsBrightning,
      this.benefitsBronzing,
      this.benefitsCooling,
      this.benefitsConcealing,
      this.benefitsConditioning,
      this.benefitsCurling,
      this.benefitsDefining,
      this.benefitsEnergising,
      this.benefitsEvenSkinTone,
      this.benefitsExfoliating,
      this.benefitsFilling,
      this.benefitsGrowthBoosting,
      this.benefitsHydrating,
      this.benefitsLengthening,
      this.benefitsLongLasting,
      this.benefitsMattifing,
      this.benefitsMoisturing,
      this.benefitsNourishing,
      this.benefitsProtecting,
      this.benefitsQuickDry,
      this.benefitsRevitalising,
      this.benefitsSculpting,
      this.benefitsSmoothing,
      this.benefitsThickening,
      this.benefitsTransferProof,
      this.benefitsVolumising,
      this.benefitsWaterproof,
      this.colorRed,
      this.colorRedHex,
      this.colorBlue,
      this.colorBlueHex,
      this.colorPink,
      this.colorPinkHex,
      this.colorBlack,
      this.colorBlackHex,
      this.colorBrown,
      this.colorBrownHex,
      this.colorGrey,
      this.colorGreyHex,
      this.colorGreen,
      this.colorGreenHex,
      this.colorBurgundy,
      this.colorBurgundyHex,
      this.colorPurple,
      this.colorPurpleHex,
      this.coverageHigh,
      this.coverageLight,
      this.coverageMedium,
      this.finishCreamy,
      this.finishGlossy,
      this.finishLuminious,
      this.finishMalte,
      this.finishMetaallic,
      this.finishNatural,
      this.finishSatin,
      this.finishSheer,
      this.finishShimmer,
      this.finishShine,
      this.formulationGel,
      this.formulationLiquid,
      this.formulationPencil,
      this.formulationPowder,
      this.formulationStick,
      this.formulationWax,
      this.formulationCream,
      this.formulationLipBalm,
      this.formulationLoose,
      this.formulationPearls,
      this.formulationPressed,
      this.formulationSerum,
      this.skinTypeCombination,
      this.skinTypeDry,
      this.skinTypeNormal,
      this.skinTypeOily,
      this.skinTypeSensitive});
  FilterOptions copyWith(
      {bool? age12,
      bool? age20,
      bool? age30,
      bool? age40,
      bool? age50,
      bool? benefitsAntiAgeing,
      bool? benefitsAntiShine,
      bool? benefitsBrightning,
      bool? benefitsBronzing,
      bool? benefitsCooling,
      bool? benefitsConcealing,
      bool? benefitsConditioning,
      bool? benefitsCurling,
      bool? benefitsDefining,
      bool? benefitsEnergising,
      bool? benefitsEvenSkinTone,
      bool? benefitsExfoliating,
      bool? benefitsFilling,
      bool? benefitsGrowthBoosting,
      bool? benefitsHydrating,
      bool? benefitsLengthening,
      bool? benefitsLongLasting,
      bool? benefitsMattifing,
      bool? benefitsMoisturing,
      bool? benefitsNourishing,
      bool? benefitsProtecting,
      bool? benefitsQuickDry,
      bool? benefitsRevitalising,
      bool? benefitsSculpting,
      bool? benefitsSmoothing,
      bool? benefitsThickening,
      bool? benefitsTransferProof,
      bool? benefitsVolumising,
      bool? benefitsWaterproof,
      bool? colorRed,
      String? colorRedHex,
      bool? colorBlue,
      String? colorBlueHex,
      bool? colorPink,
      String? colorPinkHex,
      bool? colorBlack,
      String? colorBlackHex,
      bool? colorBrown,
      String? colorBrownHex,
      bool? colorGrey,
      String? colorGreyHex,
      bool? colorGreen,
      String? colorGreenHex,
      bool? colorBurgundy,
      String? colorBurgundyHex,
      bool? colorPurple,
      String? colorPurpleHex,
      bool? coverageHigh,
      bool? coverageLight,
      bool? coverageMedium,
      bool? finishCreamy,
      bool? finishGlossy,
      bool? finishLuminious,
      bool? finishMalte,
      bool? finishMetaallic,
      bool? finishNatural,
      bool? finishSatin,
      bool? finishSheer,
      bool? finishShimmer,
      bool? finishShine,
      bool? formulationGel,
      bool? formulationLiquid,
      bool? formulationPencil,
      bool? formulationPowder,
      bool? formulationStick,
      bool? formulationWax,
      bool? formulationCream,
      bool? formulationLipBalm,
      bool? formulationLoose,
      bool? formulationPearls,
      bool? formulationPressed,
      bool? formulationSerum,
      bool? skinTypeCombination,
      bool? skinTypeDry,
      bool? skinTypeNormal,
      bool? skinTypeOily,
      bool? skinTypeSensitive}) {
    return FilterOptions(
        age12: age12 ?? this.age12,
        age20: age20 ?? this.age20,
        age30: age30 ?? this.age30,
        age40: age40 ?? this.age40,
        age50: age50 ?? this.age50,
        benefitsAntiAgeing: benefitsAntiAgeing ?? this.benefitsAntiAgeing,
        benefitsAntiShine: benefitsAntiShine ?? this.benefitsAntiShine,
        benefitsBrightning: benefitsBrightning ?? this.benefitsBrightning,
        benefitsBronzing: benefitsBronzing ?? this.benefitsBronzing,
        benefitsCooling: benefitsCooling ?? this.benefitsCooling,
        benefitsConcealing: benefitsConcealing ?? this.benefitsConcealing,
        benefitsConditioning: benefitsConditioning ?? this.benefitsConditioning,
        benefitsCurling: benefitsCurling ?? this.benefitsCurling,
        benefitsDefining: benefitsDefining ?? this.benefitsDefining,
        benefitsEnergising: benefitsEnergising ?? this.benefitsEnergising,
        benefitsEvenSkinTone: benefitsEvenSkinTone ?? this.benefitsEvenSkinTone,
        benefitsExfoliating: benefitsExfoliating ?? this.benefitsExfoliating,
        benefitsFilling: benefitsFilling ?? this.benefitsFilling,
        benefitsGrowthBoosting:
            benefitsGrowthBoosting ?? this.benefitsGrowthBoosting,
        benefitsHydrating: benefitsHydrating ?? this.benefitsHydrating,
        benefitsLengthening: benefitsLengthening ?? this.benefitsLengthening,
        benefitsLongLasting: benefitsLongLasting ?? this.benefitsLongLasting,
        benefitsMattifing: benefitsMattifing ?? this.benefitsMattifing,
        benefitsMoisturing: benefitsMoisturing ?? this.benefitsMoisturing,
        benefitsNourishing: benefitsNourishing ?? this.benefitsNourishing,
        benefitsProtecting: benefitsProtecting ?? this.benefitsProtecting,
        benefitsQuickDry: benefitsQuickDry ?? this.benefitsQuickDry,
        benefitsRevitalising: benefitsRevitalising ?? this.benefitsRevitalising,
        benefitsSculpting: benefitsSculpting ?? this.benefitsSculpting,
        benefitsSmoothing: benefitsSmoothing ?? this.benefitsSmoothing,
        benefitsThickening: benefitsThickening ?? this.benefitsThickening,
        benefitsTransferProof:
            benefitsTransferProof ?? this.benefitsTransferProof,
        benefitsVolumising: benefitsVolumising ?? this.benefitsVolumising,
        benefitsWaterproof: benefitsWaterproof ?? this.benefitsWaterproof,
        colorRed: colorRed ?? this.colorRed,
        colorRedHex: colorRedHex ?? this.colorRedHex,
        colorBlue: colorBlue ?? this.colorBlue,
        colorBlueHex: colorBlueHex ?? this.colorBlueHex,
        colorPink: colorPink ?? this.colorPink,
        colorPinkHex: colorPinkHex ?? this.colorPinkHex,
        colorBlack: colorBlack ?? this.colorBlack,
        colorBlackHex: colorBlackHex ?? this.colorBlackHex,
        colorBrown: colorBrown ?? this.colorBrown,
        colorBrownHex: colorBrownHex ?? this.colorBrownHex,
        colorGrey: colorGrey ?? this.colorGrey,
        colorGreyHex: colorGreyHex ?? this.colorGreyHex,
        colorGreen: colorGreen ?? this.colorGreen,
        colorGreenHex: colorGreenHex ?? this.colorGreenHex,
        colorBurgundy: colorBurgundy ?? this.colorBurgundy,
        colorBurgundyHex: colorBurgundyHex ?? this.colorBurgundyHex,
        colorPurple: colorPurple ?? this.colorPurple,
        colorPurpleHex: colorPurpleHex ?? this.colorPurpleHex,
        coverageHigh: coverageHigh ?? this.coverageHigh,
        coverageLight: coverageLight ?? this.coverageLight,
        coverageMedium: coverageMedium ?? this.coverageMedium,
        finishCreamy: finishCreamy ?? this.finishCreamy,
        finishGlossy: finishGlossy ?? this.finishGlossy,
        finishLuminious: finishLuminious ?? this.finishLuminious,
        finishMalte: finishMalte ?? this.finishMalte,
        finishMetaallic: finishMetaallic ?? this.finishMetaallic,
        finishNatural: finishNatural ?? this.finishNatural,
        finishSatin: finishSatin ?? this.finishSatin,
        finishSheer: finishSheer ?? this.finishSheer,
        finishShimmer: finishShimmer ?? this.finishShimmer,
        finishShine: finishShine ?? this.finishShine,
        formulationGel: formulationGel ?? this.formulationGel,
        formulationLiquid: formulationLiquid ?? this.formulationLiquid,
        formulationPencil: formulationPencil ?? this.formulationPencil,
        formulationPowder: formulationPowder ?? this.formulationPowder,
        formulationStick: formulationStick ?? this.formulationStick,
        formulationWax: formulationWax ?? this.formulationWax,
        formulationCream: formulationCream ?? this.formulationCream,
        formulationLipBalm: formulationLipBalm ?? this.formulationLipBalm,
        formulationLoose: formulationLoose ?? this.formulationLoose,
        formulationPearls: formulationPearls ?? this.formulationPearls,
        formulationPressed: formulationPressed ?? this.formulationPressed,
        formulationSerum: formulationSerum ?? this.formulationSerum,
        skinTypeCombination: skinTypeCombination ?? this.skinTypeCombination,
        skinTypeDry: skinTypeDry ?? this.skinTypeDry,
        skinTypeNormal: skinTypeNormal ?? this.skinTypeNormal,
        skinTypeOily: skinTypeOily ?? this.skinTypeOily,
        skinTypeSensitive: skinTypeSensitive ?? this.skinTypeSensitive);
  }

  Map<String, Object?> toJson() {
    return {
      'age_12': age12,
      'age_20': age20,
      'age_30': age30,
      'age_40': age40,
      'age_50': age50,
      'benefits_anti_ageing': benefitsAntiAgeing,
      'benefits_anti_shine': benefitsAntiShine,
      'benefits_brightning': benefitsBrightning,
      'benefits_bronzing': benefitsBronzing,
      'benefits_cooling': benefitsCooling,
      'benefits_concealing': benefitsConcealing,
      'benefits_conditioning': benefitsConditioning,
      'benefits_curling': benefitsCurling,
      'benefits_defining': benefitsDefining,
      'benefits_energising': benefitsEnergising,
      'benefits_even_skin_tone': benefitsEvenSkinTone,
      'benefits_exfoliating': benefitsExfoliating,
      'benefits_filling': benefitsFilling,
      'benefits_growth_boosting': benefitsGrowthBoosting,
      'benefits_hydrating': benefitsHydrating,
      'benefits_lengthening': benefitsLengthening,
      'benefits_long_lasting': benefitsLongLasting,
      'benefits_mattifing': benefitsMattifing,
      'benefits_moisturing': benefitsMoisturing,
      'benefits_nourishing': benefitsNourishing,
      'benefits_protecting': benefitsProtecting,
      'benefits_quick_dry': benefitsQuickDry,
      'benefits_revitalising': benefitsRevitalising,
      'benefits_sculpting': benefitsSculpting,
      'benefits_smoothing': benefitsSmoothing,
      'benefits_thickening': benefitsThickening,
      'benefits_transfer_proof': benefitsTransferProof,
      'benefits_volumising': benefitsVolumising,
      'benefits_waterproof': benefitsWaterproof,
      'color_red': colorRed,
      'color_red_hex': colorRedHex,
      'color_blue': colorBlue,
      'color_blue_hex': colorBlueHex,
      'color_pink': colorPink,
      'color_pink_hex': colorPinkHex,
      'color_black': colorBlack,
      'color_black_hex': colorBlackHex,
      'color_brown': colorBrown,
      'color_brown_hex': colorBrownHex,
      'color_grey': colorGrey,
      'color_grey_hex': colorGreyHex,
      'color_green': colorGreen,
      'color_green_hex': colorGreenHex,
      'color_burgundy': colorBurgundy,
      'color_burgundy_hex': colorBurgundyHex,
      'color_purple': colorPurple,
      'color_purple_hex': colorPurpleHex,
      'coverage_high': coverageHigh,
      'coverage_light': coverageLight,
      'coverage_medium': coverageMedium,
      'finish_creamy': finishCreamy,
      'finish_glossy': finishGlossy,
      'finish_luminious': finishLuminious,
      'finish_malte': finishMalte,
      'finish_metaallic': finishMetaallic,
      'finish_natural': finishNatural,
      'finish_satin': finishSatin,
      'finish_sheer': finishSheer,
      'finish_shimmer': finishShimmer,
      'finish_shine': finishShine,
      'formulation_gel': formulationGel,
      'formulation_liquid': formulationLiquid,
      'formulation_pencil': formulationPencil,
      'formulation_powder': formulationPowder,
      'formulation_stick': formulationStick,
      'formulation_wax': formulationWax,
      'formulation_cream': formulationCream,
      'formulation_lip_balm': formulationLipBalm,
      'formulation_loose': formulationLoose,
      'formulation_pearls': formulationPearls,
      'formulation_pressed': formulationPressed,
      'formulation_serum': formulationSerum,
      'skin_type_combination': skinTypeCombination,
      'skin_type_dry': skinTypeDry,
      'skin_type_normal': skinTypeNormal,
      'skin_type_oily': skinTypeOily,
      'skin_type_sensitive': skinTypeSensitive
    };
  }

  static FilterOptions fromJson(Map<String, Object?> json) {
    return FilterOptions(
        age12: json['age_12'] == null ? null : json['age_12'] as bool,
        age20: json['age_20'] == null ? null : json['age_20'] as bool,
        age30: json['age_30'] == null ? null : json['age_30'] as bool,
        age40: json['age_40'] == null ? null : json['age_40'] as bool,
        age50: json['age_50'] == null ? null : json['age_50'] as bool,
        benefitsAntiAgeing: json['benefits_anti_ageing'] == null
            ? null
            : json['benefits_anti_ageing'] as bool,
        benefitsAntiShine: json['benefits_anti_shine'] == null
            ? null
            : json['benefits_anti_shine'] as bool,
        benefitsBrightning: json['benefits_brightning'] == null
            ? null
            : json['benefits_brightning'] as bool,
        benefitsBronzing: json['benefits_bronzing'] == null
            ? null
            : json['benefits_bronzing'] as bool,
        benefitsCooling: json['benefits_cooling'] == null
            ? null
            : json['benefits_cooling'] as bool,
        benefitsConcealing: json['benefits_concealing'] == null
            ? null
            : json['benefits_concealing'] as bool,
        benefitsConditioning: json['benefits_conditioning'] == null
            ? null
            : json['benefits_conditioning'] as bool,
        benefitsCurling: json['benefits_curling'] == null
            ? null
            : json['benefits_curling'] as bool,
        benefitsDefining: json['benefits_defining'] == null
            ? null
            : json['benefits_defining'] as bool,
        benefitsEnergising: json['benefits_energising'] == null
            ? null
            : json['benefits_energising'] as bool,
        benefitsEvenSkinTone: json['benefits_even_skin_tone'] == null
            ? null
            : json['benefits_even_skin_tone'] as bool,
        benefitsExfoliating: json['benefits_exfoliating'] == null
            ? null
            : json['benefits_exfoliating'] as bool,
        benefitsFilling: json['benefits_filling'] == null
            ? null
            : json['benefits_filling'] as bool,
        benefitsGrowthBoosting: json['benefits_growth_boosting'] == null
            ? null
            : json['benefits_growth_boosting'] as bool,
        benefitsHydrating: json['benefits_hydrating'] == null
            ? null
            : json['benefits_hydrating'] as bool,
        benefitsLengthening: json['benefits_lengthening'] == null
            ? null
            : json['benefits_lengthening'] as bool,
        benefitsLongLasting: json['benefits_long_lasting'] == null
            ? null
            : json['benefits_long_lasting'] as bool,
        benefitsMattifing: json['benefits_mattifing'] == null
            ? null
            : json['benefits_mattifing'] as bool,
        benefitsMoisturing: json['benefits_moisturing'] == null
            ? null
            : json['benefits_moisturing'] as bool,
        benefitsNourishing: json['benefits_nourishing'] == null
            ? null
            : json['benefits_nourishing'] as bool,
        benefitsProtecting: json['benefits_protecting'] == null
            ? null
            : json['benefits_protecting'] as bool,
        benefitsQuickDry: json['benefits_quick_dry'] == null
            ? null
            : json['benefits_quick_dry'] as bool,
        benefitsRevitalising: json['benefits_revitalising'] == null
            ? null
            : json['benefits_revitalising'] as bool,
        benefitsSculpting: json['benefits_sculpting'] == null
            ? null
            : json['benefits_sculpting'] as bool,
        benefitsSmoothing: json['benefits_smoothing'] == null
            ? null
            : json['benefits_smoothing'] as bool,
        benefitsThickening: json['benefits_thickening'] == null
            ? null
            : json['benefits_thickening'] as bool,
        benefitsTransferProof: json['benefits_transfer_proof'] == null
            ? null
            : json['benefits_transfer_proof'] as bool,
        benefitsVolumising: json['benefits_volumising'] == null
            ? null
            : json['benefits_volumising'] as bool,
        benefitsWaterproof: json['benefits_waterproof'] == null
            ? null
            : json['benefits_waterproof'] as bool,
        colorRed: json['color_red'] == null ? null : json['color_red'] as bool,
        colorRedHex: json['color_red_hex'] == null
            ? null
            : json['color_red_hex'] as String,
        colorBlue:
            json['color_blue'] == null ? null : json['color_blue'] as bool,
        colorBlueHex: json['color_blue_hex'] == null
            ? null
            : json['color_blue_hex'] as String,
        colorPink:
            json['color_pink'] == null ? null : json['color_pink'] as bool,
        colorPinkHex: json['color_pink_hex'] == null
            ? null
            : json['color_pink_hex'] as String,
        colorBlack:
            json['color_black'] == null ? null : json['color_black'] as bool,
        colorBlackHex: json['color_black_hex'] == null
            ? null
            : json['color_black_hex'] as String,
        colorBrown:
            json['color_brown'] == null ? null : json['color_brown'] as bool,
        colorBrownHex: json['color_brown_hex'] == null
            ? null
            : json['color_brown_hex'] as String,
        colorGrey:
            json['color_grey'] == null ? null : json['color_grey'] as bool,
        colorGreyHex: json['color_grey_hex'] == null
            ? null
            : json['color_grey_hex'] as String,
        colorGreen:
            json['color_green'] == null ? null : json['color_green'] as bool,
        colorGreenHex: json['color_green_hex'] == null
            ? null
            : json['color_green_hex'] as String,
        colorBurgundy: json['color_burgundy'] == null
            ? null
            : json['color_burgundy'] as bool,
        colorBurgundyHex: json['color_burgundy_hex'] == null
            ? null
            : json['color_burgundy_hex'] as String,
        colorPurple:
            json['color_purple'] == null ? null : json['color_purple'] as bool,
        colorPurpleHex: json['color_purple_hex'] == null
            ? null
            : json['color_purple_hex'] as String,
        coverageHigh: json['coverage_high'] == null
            ? null
            : json['coverage_high'] as bool,
        coverageLight: json['coverage_light'] == null
            ? null
            : json['coverage_light'] as bool,
        coverageMedium: json['coverage_medium'] == null
            ? null
            : json['coverage_medium'] as bool,
        finishCreamy:
            json['finish_creamy'] == null ? null : json['finish_creamy'] as bool,
        finishGlossy: json['finish_glossy'] == null ? null : json['finish_glossy'] as bool,
        finishLuminious: json['finish_luminious'] == null ? null : json['finish_luminious'] as bool,
        finishMalte: json['finish_malte'] == null ? null : json['finish_malte'] as bool,
        finishMetaallic: json['finish_metaallic'] == null ? null : json['finish_metaallic'] as bool,
        finishNatural: json['finish_natural'] == null ? null : json['finish_natural'] as bool,
        finishSatin: json['finish_satin'] == null ? null : json['finish_satin'] as bool,
        finishSheer: json['finish_sheer'] == null ? null : json['finish_sheer'] as bool,
        finishShimmer: json['finish_shimmer'] == null ? null : json['finish_shimmer'] as bool,
        finishShine: json['finish_shine'] == null ? null : json['finish_shine'] as bool,
        formulationGel: json['formulation_gel'] == null ? null : json['formulation_gel'] as bool,
        formulationLiquid: json['formulation_liquid'] == null ? null : json['formulation_liquid'] as bool,
        formulationPencil: json['formulation_pencil'] == null ? null : json['formulation_pencil'] as bool,
        formulationPowder: json['formulation_powder'] == null ? null : json['formulation_powder'] as bool,
        formulationStick: json['formulation_stick'] == null ? null : json['formulation_stick'] as bool,
        formulationWax: json['formulation_wax'] == null ? null : json['formulation_wax'] as bool,
        formulationCream: json['formulation_cream'] == null ? null : json['formulation_cream'] as bool,
        formulationLipBalm: json['formulation_lip_balm'] == null ? null : json['formulation_lip_balm'] as bool,
        formulationLoose: json['formulation_loose'] == null ? null : json['formulation_loose'] as bool,
        formulationPearls: json['formulation_pearls'] == null ? null : json['formulation_pearls'] as bool,
        formulationPressed: json['formulation_pressed'] == null ? null : json['formulation_pressed'] as bool,
        formulationSerum: json['formulation_serum'] == null ? null : json['formulation_serum'] as bool,
        skinTypeCombination: json['skin_type_combination'] == null ? null : json['skin_type_combination'] as bool,
        skinTypeDry: json['skin_type_dry'] == null ? null : json['skin_type_dry'] as bool,
        skinTypeNormal: json['skin_type_normal'] == null ? null : json['skin_type_normal'] as bool,
        skinTypeOily: json['skin_type_oily'] == null ? null : json['skin_type_oily'] as bool,
        skinTypeSensitive: json['skin_type_sensitive'] == null ? null : json['skin_type_sensitive'] as bool);
  }

  @override
  String toString() {
    return '''FilterOptions(
                age12:$age12,
age20:$age20,
age30:$age30,
age40:$age40,
age50:$age50,
benefitsAntiAgeing:$benefitsAntiAgeing,
benefitsAntiShine:$benefitsAntiShine,
benefitsBrightning:$benefitsBrightning,
benefitsBronzing:$benefitsBronzing,
benefitsCooling:$benefitsCooling,
benefitsConcealing:$benefitsConcealing,
benefitsConditioning:$benefitsConditioning,
benefitsCurling:$benefitsCurling,
benefitsDefining:$benefitsDefining,
benefitsEnergising:$benefitsEnergising,
benefitsEvenSkinTone:$benefitsEvenSkinTone,
benefitsExfoliating:$benefitsExfoliating,
benefitsFilling:$benefitsFilling,
benefitsGrowthBoosting:$benefitsGrowthBoosting,
benefitsHydrating:$benefitsHydrating,
benefitsLengthening:$benefitsLengthening,
benefitsLongLasting:$benefitsLongLasting,
benefitsMattifing:$benefitsMattifing,
benefitsMoisturing:$benefitsMoisturing,
benefitsNourishing:$benefitsNourishing,
benefitsProtecting:$benefitsProtecting,
benefitsQuickDry:$benefitsQuickDry,
benefitsRevitalising:$benefitsRevitalising,
benefitsSculpting:$benefitsSculpting,
benefitsSmoothing:$benefitsSmoothing,
benefitsThickening:$benefitsThickening,
benefitsTransferProof:$benefitsTransferProof,
benefitsVolumising:$benefitsVolumising,
benefitsWaterproof:$benefitsWaterproof,
colorRed:$colorRed,
colorRedHex:$colorRedHex,
colorBlue:$colorBlue,
colorBlueHex:$colorBlueHex,
colorPink:$colorPink,
colorPinkHex:$colorPinkHex,
colorBlack:$colorBlack,
colorBlackHex:$colorBlackHex,
colorBrown:$colorBrown,
colorBrownHex:$colorBrownHex,
colorGrey:$colorGrey,
colorGreyHex:$colorGreyHex,
colorGreen:$colorGreen,
colorGreenHex:$colorGreenHex,
colorBurgundy:$colorBurgundy,
colorBurgundyHex:$colorBurgundyHex,
colorPurple:$colorPurple,
colorPurpleHex:$colorPurpleHex,
coverageHigh:$coverageHigh,
coverageLight:$coverageLight,
coverageMedium:$coverageMedium,
finishCreamy:$finishCreamy,
finishGlossy:$finishGlossy,
finishLuminious:$finishLuminious,
finishMalte:$finishMalte,
finishMetaallic:$finishMetaallic,
finishNatural:$finishNatural,
finishSatin:$finishSatin,
finishSheer:$finishSheer,
finishShimmer:$finishShimmer,
finishShine:$finishShine,
formulationGel:$formulationGel,
formulationLiquid:$formulationLiquid,
formulationPencil:$formulationPencil,
formulationPowder:$formulationPowder,
formulationStick:$formulationStick,
formulationWax:$formulationWax,
formulationCream:$formulationCream,
formulationLipBalm:$formulationLipBalm,
formulationLoose:$formulationLoose,
formulationPearls:$formulationPearls,
formulationPressed:$formulationPressed,
formulationSerum:$formulationSerum,
skinTypeCombination:$skinTypeCombination,
skinTypeDry:$skinTypeDry,
skinTypeNormal:$skinTypeNormal,
skinTypeOily:$skinTypeOily,
skinTypeSensitive:$skinTypeSensitive
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is FilterOptions &&
        other.runtimeType == runtimeType &&
        other.age12 == age12 &&
        other.age20 == age20 &&
        other.age30 == age30 &&
        other.age40 == age40 &&
        other.age50 == age50 &&
        other.benefitsAntiAgeing == benefitsAntiAgeing &&
        other.benefitsAntiShine == benefitsAntiShine &&
        other.benefitsBrightning == benefitsBrightning &&
        other.benefitsBronzing == benefitsBronzing &&
        other.benefitsCooling == benefitsCooling &&
        other.benefitsConcealing == benefitsConcealing &&
        other.benefitsConditioning == benefitsConditioning &&
        other.benefitsCurling == benefitsCurling &&
        other.benefitsDefining == benefitsDefining &&
        other.benefitsEnergising == benefitsEnergising &&
        other.benefitsEvenSkinTone == benefitsEvenSkinTone &&
        other.benefitsExfoliating == benefitsExfoliating &&
        other.benefitsFilling == benefitsFilling &&
        other.benefitsGrowthBoosting == benefitsGrowthBoosting &&
        other.benefitsHydrating == benefitsHydrating &&
        other.benefitsLengthening == benefitsLengthening &&
        other.benefitsLongLasting == benefitsLongLasting &&
        other.benefitsMattifing == benefitsMattifing &&
        other.benefitsMoisturing == benefitsMoisturing &&
        other.benefitsNourishing == benefitsNourishing &&
        other.benefitsProtecting == benefitsProtecting &&
        other.benefitsQuickDry == benefitsQuickDry &&
        other.benefitsRevitalising == benefitsRevitalising &&
        other.benefitsSculpting == benefitsSculpting &&
        other.benefitsSmoothing == benefitsSmoothing &&
        other.benefitsThickening == benefitsThickening &&
        other.benefitsTransferProof == benefitsTransferProof &&
        other.benefitsVolumising == benefitsVolumising &&
        other.benefitsWaterproof == benefitsWaterproof &&
        other.colorRed == colorRed &&
        other.colorRedHex == colorRedHex &&
        other.colorBlue == colorBlue &&
        other.colorBlueHex == colorBlueHex &&
        other.colorPink == colorPink &&
        other.colorPinkHex == colorPinkHex &&
        other.colorBlack == colorBlack &&
        other.colorBlackHex == colorBlackHex &&
        other.colorBrown == colorBrown &&
        other.colorBrownHex == colorBrownHex &&
        other.colorGrey == colorGrey &&
        other.colorGreyHex == colorGreyHex &&
        other.colorGreen == colorGreen &&
        other.colorGreenHex == colorGreenHex &&
        other.colorBurgundy == colorBurgundy &&
        other.colorBurgundyHex == colorBurgundyHex &&
        other.colorPurple == colorPurple &&
        other.colorPurpleHex == colorPurpleHex &&
        other.coverageHigh == coverageHigh &&
        other.coverageLight == coverageLight &&
        other.coverageMedium == coverageMedium &&
        other.finishCreamy == finishCreamy &&
        other.finishGlossy == finishGlossy &&
        other.finishLuminious == finishLuminious &&
        other.finishMalte == finishMalte &&
        other.finishMetaallic == finishMetaallic &&
        other.finishNatural == finishNatural &&
        other.finishSatin == finishSatin &&
        other.finishSheer == finishSheer &&
        other.finishShimmer == finishShimmer &&
        other.finishShine == finishShine &&
        other.formulationGel == formulationGel &&
        other.formulationLiquid == formulationLiquid &&
        other.formulationPencil == formulationPencil &&
        other.formulationPowder == formulationPowder &&
        other.formulationStick == formulationStick &&
        other.formulationWax == formulationWax &&
        other.formulationCream == formulationCream &&
        other.formulationLipBalm == formulationLipBalm &&
        other.formulationLoose == formulationLoose &&
        other.formulationPearls == formulationPearls &&
        other.formulationPressed == formulationPressed &&
        other.formulationSerum == formulationSerum &&
        other.skinTypeCombination == skinTypeCombination &&
        other.skinTypeDry == skinTypeDry &&
        other.skinTypeNormal == skinTypeNormal &&
        other.skinTypeOily == skinTypeOily &&
        other.skinTypeSensitive == skinTypeSensitive;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        age12,
        age20,
        age30,
        age40,
        age50,
        benefitsAntiAgeing,
        benefitsAntiShine,
        benefitsBrightning,
        benefitsBronzing,
        benefitsCooling,
        benefitsConcealing,
        benefitsConditioning,
        benefitsCurling,
        benefitsDefining,
        benefitsEnergising,
        benefitsEvenSkinTone,
        benefitsExfoliating,
        benefitsFilling,
        benefitsGrowthBoosting);
  }
}

class ColorVariants {
  final ColorAttributes? color;
  final int? price;
  final int? rewardPoint;
  final int? strikePrice;
  final int? offPercent;
  final int? minOrder;
  final int? maxOrder;
  final bool? status;
  final List<dynamic>? images;
  final String? productCode;
  final String? id;
  const ColorVariants(
      {this.color,
      this.price,
      this.rewardPoint,
      this.strikePrice,
      this.offPercent,
      this.minOrder,
      this.maxOrder,
      this.status,
      this.images,
      this.productCode,
      this.id});
  ColorVariants copyWith(
      {ColorAttributes? color,
      int? price,
      int? rewardPoint,
      int? strikePrice,
      int? offPercent,
      int? minOrder,
      int? maxOrder,
      bool? status,
      List<dynamic>? images,
      String? productCode,
      String? id}) {
    return ColorVariants(
        color: color ?? this.color,
        price: price ?? this.price,
        rewardPoint: rewardPoint ?? this.rewardPoint,
        strikePrice: strikePrice ?? this.strikePrice,
        offPercent: offPercent ?? this.offPercent,
        minOrder: minOrder ?? this.minOrder,
        maxOrder: maxOrder ?? this.maxOrder,
        status: status ?? this.status,
        images: images ?? this.images,
        productCode: productCode ?? this.productCode,
        id: id ?? this.id);
  }

  Map<String, Object?> toJson() {
    return {
      'color': color?.toJson(),
      'price': price,
      'rewardPoint': rewardPoint,
      'strikePrice': strikePrice,
      'offPercent': offPercent,
      'minOrder': minOrder,
      'maxOrder': maxOrder,
      'status': status,
      'images': images,
      'productCode': productCode,
      '_id': id
    };
  }

  static ColorVariants fromJson(Map<String, Object?> json) {
    return ColorVariants(
        color: json['color'] == null
            ? null
            : ColorAttributes.fromJson(json['color'] as Map<String, Object?>),
        price: json['price'] == null ? null : json['price'] as int,
        rewardPoint:
            json['rewardPoint'] == null ? null : json['rewardPoint'] as int,
        strikePrice:
            json['strikePrice'] == null ? null : json['strikePrice'] as int,
        offPercent:
            json['offPercent'] == null ? null : json['offPercent'] as int,
        minOrder: json['minOrder'] == null ? null : json['minOrder'] as int,
        maxOrder: json['maxOrder'] == null ? null : json['maxOrder'] as int,
        status: json['status'] == null ? null : json['status'] as bool,
        images: json['images'] == null ? null : json['images'] as List<dynamic>,
        productCode:
            json['productCode'] == null ? null : json['productCode'] as String,
        id: json['_id'] == null ? null : json['_id'] as String);
  }

  @override
  String toString() {
    return '''ColorVariants(
                color:${color.toString()},
price:$price,
rewardPoint:$rewardPoint,
strikePrice:$strikePrice,
offPercent:$offPercent,
minOrder:$minOrder,
maxOrder:$maxOrder,
status:$status,
images:$images,
productCode:$productCode,
id:$id
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is ColorVariants &&
        other.runtimeType == runtimeType &&
        other.color == color &&
        other.price == price &&
        other.rewardPoint == rewardPoint &&
        other.strikePrice == strikePrice &&
        other.offPercent == offPercent &&
        other.minOrder == minOrder &&
        other.maxOrder == maxOrder &&
        other.status == status &&
        other.images == images &&
        other.productCode == productCode &&
        other.id == id;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, color, price, rewardPoint, strikePrice,
        offPercent, minOrder, maxOrder, status, images, productCode, id);
  }
}

class ColorAttributes {
  final String? id;
  final bool? isTwin;
  final String? name;
  final List<dynamic>? colorValue;
  const ColorAttributes({this.id, this.isTwin, this.name, this.colorValue});
  ColorAttributes copyWith(
      {String? id, bool? isTwin, String? name, List<dynamic>? colorValue}) {
    return ColorAttributes(
        id: id ?? this.id,
        isTwin: isTwin ?? this.isTwin,
        name: name ?? this.name,
        colorValue: colorValue ?? this.colorValue);
  }

  Map<String, Object?> toJson() {
    return {
      '_id': id,
      'isTwin': isTwin,
      'name': name,
      'colorValue': colorValue
    };
  }

  static ColorAttributes fromJson(Map<String, Object?> json) {
    return ColorAttributes(
        id: json['_id'] == null ? null : json['_id'] as String,
        isTwin: json['isTwin'] == null ? null : json['isTwin'] as bool,
        name: json['name'] == null ? null : json['name'] as String,
        colorValue: json['colorValue'] == null
            ? null
            : json['colorValue'] as List<dynamic>);
  }

  @override
  String toString() {
    return '''ColorAttributes(
                id:$id,
isTwin:$isTwin,
name:$name,
colorValue:$colorValue
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is ColorAttributes &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.isTwin == isTwin &&
        other.name == name &&
        other.colorValue == colorValue;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, isTwin, name, colorValue);
  }
}

class Brand {
  final String? id;
  final String? slug;
  final String? name;
  const Brand({this.id, this.slug, this.name});
  Brand copyWith({String? id, String? slug, String? name}) {
    return Brand(
        id: id ?? this.id, slug: slug ?? this.slug, name: name ?? this.name);
  }

  Map<String, Object?> toJson() {
    return {'_id': id, 'slug': slug, 'name': name};
  }

  static Brand fromJson(Map<String, Object?> json) {
    return Brand(
        id: json['_id'] == null ? null : json['_id'] as String,
        slug: json['slug'] == null ? null : json['slug'] as String,
        name: json['name'] == null ? null : json['name'] as String);
  }

  @override
  String toString() {
    return '''Brand(
                id:$id,
slug:$slug,
name:$name
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Brand &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.slug == slug &&
        other.name == name;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, slug, name);
  }
}

class Category {
  final String? id;
  final String? slug;
  final String? title;
  final int? level;
  final String? parentId;
  const Category({this.id, this.slug, this.title, this.level, this.parentId});
  Category copyWith(
      {String? id, String? slug, String? title, int? level, String? parentId}) {
    return Category(
        id: id ?? this.id,
        slug: slug ?? this.slug,
        title: title ?? this.title,
        level: level ?? this.level,
        parentId: parentId ?? this.parentId);
  }

  Map<String, Object?> toJson() {
    return {
      '_id': id,
      'slug': slug,
      'title': title,
      'level': level,
      'parentId': parentId
    };
  }

  static Category fromJson(Map<String, Object?> json) {
    return Category(
        id: json['_id'] == null ? null : json['_id'] as String,
        slug: json['slug'] == null ? null : json['slug'] as String,
        title: json['title'] == null ? null : json['title'] as String,
        level: json['level'] == null ? null : json['level'] as int,
        parentId: json['parentId'] == null ? null : json['parentId'] as String);
  }

  @override
  String toString() {
    return '''Category(
                id:$id,
slug:$slug,
title:$title,
level:$level,
parentId:$parentId
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Category &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.slug == slug &&
        other.title == title &&
        other.level == level &&
        other.parentId == parentId;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, slug, title, level, parentId);
  }
}
