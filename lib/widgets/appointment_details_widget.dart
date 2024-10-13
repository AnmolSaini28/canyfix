import 'package:canyfix/viewmodels/appointemt_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class AppointmentDetailsWidget extends StatelessWidget {
  const AppointmentDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<AppointmentViewModel>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(18),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(11, 43, 79, 0.21),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Appointment Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _buildDetailRow('Phone Model', viewModel.p1),
            const SizedBox(
              height: 14,
            ),
            _buildDetailRow('Phone Brand', viewModel.p2),
            const SizedBox(
              height: 14,
            ),
            _buildDetailRow('Appointment Number', viewModel.appointmentNumber),
            const SizedBox(
              height: 14,
            ),
            _buildDetailRow('Shipment Number', viewModel.shipmentNumber),
            const SizedBox(
              height: 14,
            ),
            _buildDetailRow('Order Date', viewModel.orderDate),
            const SizedBox(
              height: 14,
            ),
            _buildDetailRow('Product Total', '\$${viewModel.productTotal}'),
            const SizedBox(
              height: 14,
            ),
            _buildThreeDetailRow("Delivery Fee", "Free", "40.00"),
            const SizedBox(
              height: 14,
            ),
            _buildDetailRow('Order Total', '\$${viewModel.orderTotal}'),
            const SizedBox(
              height: 14,
            ),
            _buildThreeDetailRow1("Invoice Number", "U134L45624"),
            const SizedBox(
              height: 14,
            ),
            _buildDetailRow('Payment Mode', viewModel.paymentMode),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildThreeDetailRow(String title, String value, String extraValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Row(
            children: [
              Text(
                value,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color.fromRGBO(69, 191, 72, 1),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                extraValue,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: Color.fromRGBO(153, 153, 153, 1),
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildThreeDetailRow1(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Row(
            children: [
              Text(
                value,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              SvgPicture.asset("assets/images/Vector.svg"),
            ],
          ),
        ),
      ],
    );
  }
}
