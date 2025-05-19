import 'package:freezed_annotation/freezed_annotation.dart';
part 'cat_json.g.dart';
part 'cat_json.freezed.dart';

@freezed
class CatJson with _$CatJson {
  const CatJson._();
  const factory CatJson({
    @Default(0) final int id,
    @Default('') final String name,
    @Default('') final String slug,
    @Default('') final String permalink,
    @Default('') @JsonKey(name: 'date_created') final String dateCreated,
    @Default('') @JsonKey(name: 'date_created_gmt') final String dateCreatedGmt,
    @Default('') @JsonKey(name: 'date_modified') final String dateModified,
    @Default('')
    @JsonKey(name: 'date_modified_gmt')
    final String dateModifiedGmt,
    @Default('') final String type,
    @Default('') final String status,
    @Default(false) final bool featured,
    @Default('')
    @JsonKey(name: 'catalog_visibility')
    final String catalogVisibility,
    @Default('') final String description,
    @Default('')
    @JsonKey(name: 'short_description')
    final String shortDescription,
    @Default('') final String sku,
    @Default('') final String price,
    @Default('') @JsonKey(name: 'regular_price') final String regularPrice,
    @Default('') @JsonKey(name: 'sale_price') final String salePrice,
    // Parse Null value as dynamic
    @JsonKey(name: 'date_on_sale_from') required final dynamic dateOnSaleFrom,
    // Parse Null value as dynamic
    @JsonKey(name: 'date_on_sale_from_gmt')
    required final dynamic dateOnSaleFromGmt,
    // Parse Null value as dynamic
    @JsonKey(name: 'date_on_sale_to') required final dynamic dateOnSaleTo,
    // Parse Null value as dynamic
    @JsonKey(name: 'date_on_sale_to_gmt')
    required final dynamic dateOnSaleToGmt,
    @Default(false) @JsonKey(name: 'on_sale') final bool onSale,
    @Default(false) final bool purchasable,
    @Default(0) @JsonKey(name: 'total_sales') final int totalSales,
    @Default(false) final bool virtual,
    @Default(false) final bool downloadable,
    // Parse Null value as dynamic
    @Default([]) final List<dynamic> downloads,
    @Default(0) @JsonKey(name: 'download_limit') final int downloadLimit,
    @Default(0) @JsonKey(name: 'download_expiry') final int downloadExpiry,
    @Default('') @JsonKey(name: 'external_url') final String externalUrl,
    @Default('') @JsonKey(name: 'button_text') final String buttonText,
    @Default('') @JsonKey(name: 'tax_status') final String taxStatus,
    @Default('') @JsonKey(name: 'tax_class') final String taxClass,
    @Default(false) @JsonKey(name: 'manage_stock') final bool manageStock,
    // Parse Null value as dynamic
    @JsonKey(name: 'stock_quantity') required final dynamic stockQuantity,
    @Default('') final String backorders,
    @Default(false)
    @JsonKey(name: 'backorders_allowed')
    final bool backordersAllowed,
    @Default(false) final bool backordered,
    // Parse Null value as dynamic
    @JsonKey(name: 'low_stock_amount') required final dynamic lowStockAmount,
    @Default(false)
    @JsonKey(name: 'sold_individually')
    final bool soldIndividually,
    @Default('') final String weight,
    required final Dimensions dimensions,
    @Default(false)
    @JsonKey(name: 'shipping_required')
    final bool shippingRequired,
    @Default(false)
    @JsonKey(name: 'shipping_taxable')
    final bool shippingTaxable,
    @Default('') @JsonKey(name: 'shipping_class') final String shippingClass,
    @Default(0) @JsonKey(name: 'shipping_class_id') final int shippingClassId,
    @Default(false) @JsonKey(name: 'reviews_allowed') final bool reviewsAllowed,
    @Default('') @JsonKey(name: 'average_rating') final String averageRating,
    @Default(0) @JsonKey(name: 'rating_count') final int ratingCount,
    // Parse Null value as dynamic
    @Default([]) final List<dynamic> upsellIds,
    // Parse Null value as dynamic
    @Default([]) final List<dynamic> crossSellIds,
    @Default(0) @JsonKey(name: 'parent_id') final int parentId,
    @Default('') @JsonKey(name: 'purchase_note') final String purchaseNote,
    @Default([]) final List<Categories> categories,
    @Default([]) final List<Tags> tags,
    @Default([]) final List<Images> images,
    @Default([]) final List<Attributes> attributes,
    // Parse Null value as dynamic
    @Default([]) final List<dynamic> defaultAttributes,
    // Parse Null value as dynamic
    @Default([]) final List<dynamic> variations,
    // Parse Null value as dynamic
    @Default([]) final List<dynamic> groupedProducts,
    @Default(0) @JsonKey(name: 'menu_order') final int menuOrder,
    @Default('') @JsonKey(name: 'price_html') final String priceHtml,
    @Default([]) final List<int> relatedIds,
    @Default([]) final List<MetaData> metaData,
    @Default('') @JsonKey(name: 'stock_status') final String stockStatus,
    @Default(false) @JsonKey(name: 'has_options') final bool hasOptions,
    @JsonKey(name: '_links') required final Links links,
  }) = _CatJson;
  factory CatJson.fromJson(Map<String, dynamic> json) =>
      _$CatJsonFromJson(json);
}

@freezed
class Dimensions with _$Dimensions {
  const Dimensions._();
  const factory Dimensions({
    @Default('') final String length,
    @Default('') final String width,
    @Default('') final String height,
  }) = _Dimensions;
  factory Dimensions.fromJson(Map<String, dynamic> json) =>
      _$DimensionsFromJson(json);
}

@freezed
class Categories with _$Categories {
  const Categories._();
  const factory Categories({
    @Default(0) final int id,
    @Default('') final String name,
    @Default('') final String slug,
  }) = _Categories;
  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}

@freezed
class Tags with _$Tags {
  const Tags._();
  const factory Tags({
    @Default(0) final int? id,
    @Default('') final String? name,
    @Default('') final String? slug,
  }) = _Tags;
  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);
}

@freezed
class Images with _$Images {
  const Images._();
  const factory Images({
    @Default(0) final int? id,
    @Default('') @JsonKey(name: 'date_created') final String? dateCreated,
    @Default('')
    @JsonKey(name: 'date_created_gmt')
    final String? dateCreatedGmt,
    @Default('') @JsonKey(name: 'date_modified') final String? dateModified,
    @Default('')
    @JsonKey(name: 'date_modified_gmt')
    final String? dateModifiedGmt,
    @Default('') final String? src,
    @Default('') final String? name,
    @Default('') final String? alt,
  }) = _Images;
  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  const Attributes._();
  const factory Attributes({
    @Default(0) final int id,
    @Default('') final String name,
    @Default(0) final int position,
    @Default(false) final bool visible,
    @Default(false) final bool variation,
    @Default([]) final List<String> options,
  }) = _Attributes;
  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}

@freezed
class MetaData with _$MetaData {
  const MetaData._();
  const factory MetaData({
    @Default(0) final int id,
    @Default('') final String key,
    @Default('') final String value,
  }) = _MetaData;
  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
}

@freezed
class Links with _$Links {
  const Links._();
  const factory Links({
    @Default([]) final List<Self> self,
    @Default([]) final List<Collection> collection,
  }) = _Links;
  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class Self with _$Self {
  const Self._();
  const factory Self({@Default('') final String? href}) = _Self;
  factory Self.fromJson(Map<String, dynamic> json) => _$SelfFromJson(json);
}

@freezed
class Collection with _$Collection {
  const Collection._();
  const factory Collection({@Default('') final String? href}) = _Collection;
  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
