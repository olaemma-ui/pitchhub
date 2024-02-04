class MyOrderModel {
  final String id;
  final String name;
  final String price;
  final int quantity;
  final String total;
  final String? statusText;
  final bool? status;
  final Function()? onDelete;
  final Function()? onTap;

  MyOrderModel({
    this.statusText,
    this.status,
    this.onDelete,
    this.onTap,
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.total,
  });
}
