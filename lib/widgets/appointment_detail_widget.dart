import 'package:canyfix/viewmodels/appointemt_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppointmentDetailWidget extends StatelessWidget {
  const AppointmentDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<AppointmentViewModel>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 20,
        ),
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/2.png',
              width: 89,
              height: 89,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  viewModel.phoneModel,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  viewModel.repairType,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(153, 153, 153, 1),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  viewModel.marketName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(153, 153, 153, 1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
