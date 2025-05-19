// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatJsonImpl _$$CatJsonImplFromJson(
  Map<String, dynamic> json,
) => _$CatJsonImpl(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
  permalink: json['permalink'] as String? ?? '',
  dateCreated: json['date_created'] as String? ?? '',
  dateCreatedGmt: json['date_created_gmt'] as String? ?? '',
  dateModified: json['date_modified'] as String? ?? '',
  dateModifiedGmt: json['date_modified_gmt'] as String? ?? '',
  type: json['type'] as String? ?? '',
  status: json['status'] as String? ?? '',
  featured: json['featured'] as bool? ?? false,
  catalogVisibility: json['catalog_visibility'] as String? ?? '',
  description: json['description'] as String? ?? '',
  shortDescription: json['short_description'] as String? ?? '',
  sku: json['sku'] as String? ?? '',
  price: json['price'] as String? ?? '',
  regularPrice: json['regular_price'] as String? ?? '',
  salePrice: json['sale_price'] as String? ?? '',
  dateOnSaleFrom: json['date_on_sale_from'],
  dateOnSaleFromGmt: json['date_on_sale_from_gmt'],
  dateOnSaleTo: json['date_on_sale_to'],
  dateOnSaleToGmt: json['date_on_sale_to_gmt'],
  onSale: json['on_sale'] as bool? ?? false,
  purchasable: json['purchasable'] as bool? ?? false,
  totalSales: (json['total_sales'] as num?)?.toInt() ?? 0,
  virtual: json['virtual'] as bool? ?? false,
  downloadable: json['downloadable'] as bool? ?? false,
  downloads: json['downloads'] as List<dynamic>? ?? const [],
  downloadLimit: (json['download_limit'] as num?)?.toInt() ?? 0,
  downloadExpiry: (json['download_expiry'] as num?)?.toInt() ?? 0,
  externalUrl: json['external_url'] as String? ?? '',
  buttonText: json['button_text'] as String? ?? '',
  taxStatus: json['tax_status'] as String? ?? '',
  taxClass: json['tax_class'] as String? ?? '',
  manageStock: json['manage_stock'] as bool? ?? false,
  stockQuantity: json['stock_quantity'],
  backorders: json['backorders'] as String? ?? '',
  backordersAllowed: json['backorders_allowed'] as bool? ?? false,
  backordered: json['backordered'] as bool? ?? false,
  lowStockAmount: json['low_stock_amount'],
  soldIndividually: json['sold_individually'] as bool? ?? false,
  weight: json['weight'] as String? ?? '',
  dimensions: Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
  shippingRequired: json['shipping_required'] as bool? ?? false,
  shippingTaxable: json['shipping_taxable'] as bool? ?? false,
  shippingClass: json['shipping_class'] as String? ?? '',
  shippingClassId: (json['shipping_class_id'] as num?)?.toInt() ?? 0,
  reviewsAllowed: json['reviews_allowed'] as bool? ?? false,
  averageRating: json['average_rating'] as String? ?? '',
  ratingCount: (json['rating_count'] as num?)?.toInt() ?? 0,
  upsellIds: json['upsellIds'] as List<dynamic>? ?? const [],
  crossSellIds: json['crossSellIds'] as List<dynamic>? ?? const [],
  parentId: (json['parent_id'] as num?)?.toInt() ?? 0,
  purchaseNote: json['purchase_note'] as String? ?? '',
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  tags:
      (json['tags'] as List<dynamic>?)
          ?.map((e) => Tags.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  attributes:
      (json['attributes'] as List<dynamic>?)
          ?.map((e) => Attributes.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  defaultAttributes: json['defaultAttributes'] as List<dynamic>? ?? const [],
  variations: json['variations'] as List<dynamic>? ?? const [],
  groupedProducts: json['groupedProducts'] as List<dynamic>? ?? const [],
  menuOrder: (json['menu_order'] as num?)?.toInt() ?? 0,
  priceHtml: json['price_html'] as String? ?? '',
  relatedIds:
      (json['relatedIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  metaData:
      (json['metaData'] as List<dynamic>?)
          ?.map((e) => MetaData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  stockStatus: json['stock_status'] as String? ?? '',
  hasOptions: json['has_options'] as bool? ?? false,
  links: Links.fromJson(json['_links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CatJsonImplToJson(_$CatJsonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'permalink': instance.permalink,
      'date_created': instance.dateCreated,
      'date_created_gmt': instance.dateCreatedGmt,
      'date_modified': instance.dateModified,
      'date_modified_gmt': instance.dateModifiedGmt,
      'type': instance.type,
      'status': instance.status,
      'featured': instance.featured,
      'catalog_visibility': instance.catalogVisibility,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'sku': instance.sku,
      'price': instance.price,
      'regular_price': instance.regularPrice,
      'sale_price': instance.salePrice,
      'date_on_sale_from': instance.dateOnSaleFrom,
      'date_on_sale_from_gmt': instance.dateOnSaleFromGmt,
      'date_on_sale_to': instance.dateOnSaleTo,
      'date_on_sale_to_gmt': instance.dateOnSaleToGmt,
      'on_sale': instance.onSale,
      'purchasable': instance.purchasable,
      'total_sales': instance.totalSales,
      'virtual': instance.virtual,
      'downloadable': instance.downloadable,
      'downloads': instance.downloads,
      'download_limit': instance.downloadLimit,
      'download_expiry': instance.downloadExpiry,
      'external_url': instance.externalUrl,
      'button_text': instance.buttonText,
      'tax_status': instance.taxStatus,
      'tax_class': instance.taxClass,
      'manage_stock': instance.manageStock,
      'stock_quantity': instance.stockQuantity,
      'backorders': instance.backorders,
      'backorders_allowed': instance.backordersAllowed,
      'backordered': instance.backordered,
      'low_stock_amount': instance.lowStockAmount,
      'sold_individually': instance.soldIndividually,
      'weight': instance.weight,
      'dimensions': instance.dimensions,
      'shipping_required': instance.shippingRequired,
      'shipping_taxable': instance.shippingTaxable,
      'shipping_class': instance.shippingClass,
      'shipping_class_id': instance.shippingClassId,
      'reviews_allowed': instance.reviewsAllowed,
      'average_rating': instance.averageRating,
      'rating_count': instance.ratingCount,
      'upsellIds': instance.upsellIds,
      'crossSellIds': instance.crossSellIds,
      'parent_id': instance.parentId,
      'purchase_note': instance.purchaseNote,
      'categories': instance.categories,
      'tags': instance.tags,
      'images': instance.images,
      'attributes': instance.attributes,
      'defaultAttributes': instance.defaultAttributes,
      'variations': instance.variations,
      'groupedProducts': instance.groupedProducts,
      'menu_order': instance.menuOrder,
      'price_html': instance.priceHtml,
      'relatedIds': instance.relatedIds,
      'metaData': instance.metaData,
      'stock_status': instance.stockStatus,
      'has_options': instance.hasOptions,
      '_links': instance.links,
    };

_$DimensionsImpl _$$DimensionsImplFromJson(Map<String, dynamic> json) =>
    _$DimensionsImpl(
      length: json['length'] as String? ?? '',
      width: json['width'] as String? ?? '',
      height: json['height'] as String? ?? '',
    );

Map<String, dynamic> _$$DimensionsImplToJson(_$DimensionsImpl instance) =>
    <String, dynamic>{
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
    };

_$CategoriesImpl _$$CategoriesImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
    );

Map<String, dynamic> _$$CategoriesImplToJson(_$CategoriesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

_$TagsImpl _$$TagsImplFromJson(Map<String, dynamic> json) => _$TagsImpl(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
);

Map<String, dynamic> _$$TagsImplToJson(_$TagsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

_$ImagesImpl _$$ImagesImplFromJson(Map<String, dynamic> json) => _$ImagesImpl(
  id: (json['id'] as num?)?.toInt() ?? 0,
  dateCreated: json['date_created'] as String? ?? '',
  dateCreatedGmt: json['date_created_gmt'] as String? ?? '',
  dateModified: json['date_modified'] as String? ?? '',
  dateModifiedGmt: json['date_modified_gmt'] as String? ?? '',
  src: json['src'] as String? ?? '',
  name: json['name'] as String? ?? '',
  alt: json['alt'] as String? ?? '',
);

Map<String, dynamic> _$$ImagesImplToJson(_$ImagesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_created': instance.dateCreated,
      'date_created_gmt': instance.dateCreatedGmt,
      'date_modified': instance.dateModified,
      'date_modified_gmt': instance.dateModifiedGmt,
      'src': instance.src,
      'name': instance.name,
      'alt': instance.alt,
    };

_$AttributesImpl _$$AttributesImplFromJson(Map<String, dynamic> json) =>
    _$AttributesImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      position: (json['position'] as num?)?.toInt() ?? 0,
      visible: json['visible'] as bool? ?? false,
      variation: json['variation'] as bool? ?? false,
      options:
          (json['options'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AttributesImplToJson(_$AttributesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'position': instance.position,
      'visible': instance.visible,
      'variation': instance.variation,
      'options': instance.options,
    };

_$MetaDataImpl _$$MetaDataImplFromJson(Map<String, dynamic> json) =>
    _$MetaDataImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      key: json['key'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$$MetaDataImplToJson(_$MetaDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
  self:
      (json['self'] as List<dynamic>?)
          ?.map((e) => Self.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  collection:
      (json['collection'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) =>
    <String, dynamic>{'self': instance.self, 'collection': instance.collection};

_$SelfImpl _$$SelfImplFromJson(Map<String, dynamic> json) =>
    _$SelfImpl(href: json['href'] as String? ?? '');

Map<String, dynamic> _$$SelfImplToJson(_$SelfImpl instance) =>
    <String, dynamic>{'href': instance.href};

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(href: json['href'] as String? ?? '');

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) =>
    <String, dynamic>{'href': instance.href};
