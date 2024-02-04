// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';



class ProductData {
  final String owner;
    final String company;
    final String name;
    final String description;
    final String categoryId;
    final String subcategoryId;
    final int price;
    final String productSpecification;
    final String status;
    final String id;
    final DateTime createdAt;
    final DateTime updatedAt;
    final int v;
  ProductData({
    required this.owner,
    required this.company,
    required this.name,
    required this.description,
    required this.categoryId,
    required this.subcategoryId,
    required this.price,
    required this.productSpecification,
    required this.status,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  ProductData copyWith({
    String? owner,
    String? company,
    String? name,
    String? description,
    String? categoryId,
    String? subcategoryId,
    int? price,
    String? productSpecification,
    String? status,
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) {
    return ProductData(
      owner: owner ?? this.owner,
      company: company ?? this.company,
      name: name ?? this.name,
      description: description ?? this.description,
      categoryId: categoryId ?? this.categoryId,
      subcategoryId: subcategoryId ?? this.subcategoryId,
      price: price ?? this.price,
      productSpecification: productSpecification ?? this.productSpecification,
      status: status ?? this.status,
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      v: v ?? this.v,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner': owner,
      'company': company,
      'name': name,
      'description': description,
      'categoryId': categoryId,
      'subcategoryId': subcategoryId,
      'price': price,
      'productSpecification': productSpecification,
      'status': status,
      '_id': id,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt.millisecondsSinceEpoch,
      '__v': v,
    };
  }

  factory ProductData.fromMap(Map<String, dynamic> map) {
    return ProductData(
      owner: map['owner'] as String,
      company: map['company'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      categoryId: map['categoryId'] as String,
      subcategoryId: map['subcategoryId'] as String,
      price: map['price'] as int,
      productSpecification: map['productSpecification'] as String,
      status: map['status'] as String,
      id: map['_id'] as String,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int),
      v: map['__v'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductData.fromJson(String source) => ProductData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductData(owner: $owner, company: $company, name: $name, description: $description, categoryId: $categoryId, subcategoryId: $subcategoryId, price: $price, productSpecification: $productSpecification, status: $status, id: $id, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(covariant ProductData other) {
    if (identical(this, other)) return true;
  
    return 
      other.owner == owner &&
      other.company == company &&
      other.name == name &&
      other.description == description &&
      other.categoryId == categoryId &&
      other.subcategoryId == subcategoryId &&
      other.price == price &&
      other.productSpecification == productSpecification &&
      other.status == status &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.v == v;
  }

  @override
  int get hashCode {
    return owner.hashCode ^
      company.hashCode ^
      name.hashCode ^
      description.hashCode ^
      categoryId.hashCode ^
      subcategoryId.hashCode ^
      price.hashCode ^
      productSpecification.hashCode ^
      status.hashCode ^
      id.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      v.hashCode;
  }
}
