class Transaction {
  String id;
  String title;
  double? amount;
  DateTime date = DateTime.now();

  Transaction({
    required this.id,
    required this.title,
    required this.amount,
  });
}
