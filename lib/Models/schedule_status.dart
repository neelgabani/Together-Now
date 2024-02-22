import 'package:flutter/material.dart';

class ScheduleStatus extends StatefulWidget {
  const ScheduleStatus({super.key});

  @override
  State<ScheduleStatus> createState() => _ScheduleStatusState();
}

class _ScheduleStatusState extends State<ScheduleStatus> {
  bool hasAppointments = false; // Set this to true if there are appointments

  @override
  Widget build(BuildContext context) {
    return hasAppointments ? _buildAppointments() : _buildNoAppointments();
  }

  Widget _buildAppointments() {
    return const Placeholder();
  }

  Widget _buildNoAppointments() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Your schedule is empty',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Text(
            'There are no appointments scheduled',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 35),
          Center(
            child: ElevatedButton(
              onPressed: () {
                //
              },
              style: ElevatedButton.styleFrom(
                // padding: const EdgeInsets.all(8),
                fixedSize: const Size(290, 55),
                backgroundColor: const Color(0xFF4FC0D0),
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                'Book an appointment',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
