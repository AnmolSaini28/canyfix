class Appointment {
  final String phoneModel;
  final String repairType;
  final String marketName;
  final List<String> appointmentStages;
  final List<String> appointmentTimes;
  final String appointmentNumber;
  final String shipmentNumber;
  final String orderDate;
  final double productTotal;
  final double deliveryFee;
  final double orderTotal;
  final String paymentMode;

  Appointment({
    required this.phoneModel,
    required this.repairType,
    required this.marketName,
    required this.appointmentStages,
    required this.appointmentTimes,
    required this.appointmentNumber,
    required this.shipmentNumber,
    required this.orderDate,
    required this.productTotal,
    required this.deliveryFee,
    required this.orderTotal,
    required this.paymentMode,
  });
}
