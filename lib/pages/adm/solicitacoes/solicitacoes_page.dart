import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_reserve/pages/adm/adm_controller.dart';

import '../components/equipament_card.dart';

class SolicitacoesPage extends StatelessWidget {
  const SolicitacoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final equipmentController = Provider.of<AdmController>(context);
    final reservedEquipments =
        equipmentController.reservations; 

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xffD69ADE),
        title:
            Text("Minhas Solicitações", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: reservedEquipments.length,
        itemBuilder: (context, index) {
          final equipment = reservedEquipments[index];
          return EquipmentCard(
            equipment: equipment,
            onTap: () {
              
            },
          );
        },
      ),
    );
  }
}
