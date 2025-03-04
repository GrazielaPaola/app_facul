import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/equipament_model.dart';

class EquipmentReservationPage extends StatefulWidget {
  final EquipamentModel equipment;

  const EquipmentReservationPage({super.key, required this.equipment});

  @override
  _EquipmentReservationPageState createState() =>
      _EquipmentReservationPageState();
}

class _EquipmentReservationPageState extends State<EquipmentReservationPage> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  void _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 30)),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void _selectTime(BuildContext context) async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = selectedDate != null
        ? DateFormat('dd/MM/yyyy').format(selectedDate!)
        : "Selecionar Data";
    String formattedTime = selectedTime != null
        ? selectedTime!.format(context)
        : "Selecionar Horário";

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xffD69ADE),
        title:
            Text("Reservar Equipamento", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Exibir equipamento
            Center(
              child: Column(
                children: [
                  Image.network(widget.equipment.imageUrl,
                      width: 150, height: 150, fit: BoxFit.cover),
                  const SizedBox(height: 10),
                  Text(widget.equipment.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("Quantidade disponível: ${widget.equipment.quantity}",
                      style: TextStyle(color: Colors.grey[700])),
                ],
              ),
            ),

            const SizedBox(height: 20),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Status:",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: widget.equipment.quantity > 0
                        ? Colors.green
                        : Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    widget.equipment.quantity > 0
                        ? "Disponível"
                        : "Indisponível",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Selecionar data
            GestureDetector(
              onTap: () => _selectDate(context),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Data: $formattedDate",
                        style: TextStyle(fontSize: 16)),
                    Icon(Icons.calendar_today, color: Colors.blue),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Selecionar horário
            GestureDetector(
              onTap: () => _selectTime(context),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Horário: $formattedTime",
                        style: TextStyle(fontSize: 16)),
                    Icon(Icons.access_time, color: Colors.blue),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD69ADE), 
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), 
                  ),
                ),
                child: const Text(
                  "Reservar",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ), //
          ],
        ),
      ),
    );
  }
}
