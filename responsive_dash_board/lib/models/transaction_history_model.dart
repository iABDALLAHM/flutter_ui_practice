class TransactionHistoryModel {
  final String title, date;
  final double amount;
  final bool isWithDrawal;
  const TransactionHistoryModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.isWithDrawal,
  });
}
