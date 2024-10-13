import 'package:flutter/material.dart';

class AppointmentViewModel extends ChangeNotifier {
  // This is where the data is stored.
  String phoneModel = 'Apple | iPhone 11';
  String repairType = 'Display Repair';
  String marketName = 'Market OG Display';

  List<String> appointmentStages = [
    'Appointment Booked',
    'Phone Pick-up',
    'Repairing under process',
    'Delivered'
  ];

  List<String> appointmentTimes = [
    'Sat, 12 Oct 04:59 PM',
    'Sat, 12 Oct 04:59 PM',
    'Sat, 12 Oct 04:59 PM',
    'Sat, 12 Oct 04:59 PM'
  ];

  // Other details for Appointment
  String appointmentNumber = '125678976543343467';
  String p1 = 'Apple';
  String p2 = 'I phone 11 pro';
  String shipmentNumber = '1234567-6756';
  String orderDate = '12 October 2024';
  String invoiceNumber = "U134L45624";
  double productTotal = 860.0;
  double deliveryFee = 0.0;
  double orderTotal = 960.0;
  String paymentMode = 'UPI';

  // Notify listeners when data changes.
  void updateReview(String newReview) {
    // Update logic for review submission
    notifyListeners();
  }

  void submitStarRating(int stars) {
    // Logic for submitting star rating
    notifyListeners();
  }
}
