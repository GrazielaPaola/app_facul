import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_reserve/pages/adm/adm_controller.dart';

import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_drawer.dart';
import '../equipament_reservation/equipament_reservation_page.dart';
import 'components/equipament_card.dart';

class AdmPage extends StatelessWidget {
  const AdmPage({super.key});

  @override
  Widget build(BuildContext context) {
    final equipamentProvider = Provider.of<AdmController>(context);

    return Scaffold(
      backgroundColor: const Color(0xffF6F0F0),
      appBar: CustomAppBar(title: "Home"),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: equipamentProvider.equipments.length,
          itemBuilder: (context, index) {
            final equipment = equipamentProvider.equipments[index];
            final model = equipamentProvider.equipments[index];

            return EquipmentCard(
              equipment: model,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        EquipmentReservationPage(equipment: equipment),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
