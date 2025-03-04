import 'package:flutter/material.dart';

import '../../models/equipament_model.dart';

class AdmController extends ChangeNotifier {
  final List<EquipamentModel> _equipments = [
    EquipamentModel(
      name: "Projetor Multimídia",
      imageUrl:
          "https://th.bing.com/th/id/R.a1094c3c56f3110591ec54fc6b9ea01f?rik=fONYfJrv1VWqmg&riu=http%3a%2f%2fi.mlcdn.com.br%2f1500x1500%2fprojetor-benq-ms513pb-2700-lumensresolucao-nativa-800-x-600-usb-hdmi-088206400.jpg&ehk=CmT30eTdbCrkn%2fNvlxzOnwDcLY0ZiSumnRCPu9H6HTc%3d&risl=&pid=ImgRaw&r=0",
      quantity: 5,
    ),
    EquipamentModel(
      name: "Notebook Dell",
      imageUrl:
          "https://th.bing.com/th/id/OIP.llixEOL7d5KxeJ7Lic_mJwAAAA?rs=1&pid=ImgDetMain",
      quantity: 3,
    ),
    EquipamentModel(
      name: "Caixa de Som Amplificada",
      imageUrl:
          "https://a-static.mlcdn.com.br/1500x1500/caixa-de-som-lenoxx-ca-80-bluetooth-portatil-amplificada-120w-usb/magazineluiza/030213800/022bee2cd90aeb21ef5613c4e7812e85.jpg",
      quantity: 7,
    ),
    EquipamentModel(
      name: "Microfone",
      imageUrl:
          "https://th.bing.com/th/id/OIP.2oeUkIlegX6RmkrSoHyoBgHaHa?rs=1&pid=ImgDetMain",
      quantity: 32,
    ),
    EquipamentModel(
      name: "Televisor",
      imageUrl: "https://media.s-bol.com/qxj5A4An0ZJ7/1036x1200.jpg",
      quantity: 0,
    ),
  ];
  final List<EquipamentModel> _historic = [
    EquipamentModel(
      name: "Televisor",
      imageUrl: "https://media.s-bol.com/qxj5A4An0ZJ7/1036x1200.jpg",
      quantity: 0,
    ),
    EquipamentModel(
      name: "Notebook Dell",
      imageUrl:
          "https://th.bing.com/th/id/OIP.llixEOL7d5KxeJ7Lic_mJwAAAA?rs=1&pid=ImgDetMain",
      quantity: 3,
    ),
    EquipamentModel(
      name: "Caixa de Som Amplificada",
      imageUrl:
          "https://a-static.mlcdn.com.br/1500x1500/caixa-de-som-lenoxx-ca-80-bluetooth-portatil-amplificada-120w-usb/magazineluiza/030213800/022bee2cd90aeb21ef5613c4e7812e85.jpg",
      quantity: 7,
    ),
    EquipamentModel(
      name: "Caixa de Som Amplificada",
      imageUrl:
          "https://a-static.mlcdn.com.br/1500x1500/caixa-de-som-lenoxx-ca-80-bluetooth-portatil-amplificada-120w-usb/magazineluiza/030213800/022bee2cd90aeb21ef5613c4e7812e85.jpg",
      quantity: 7,
    ),
    EquipamentModel(
      name: "Televisor",
      imageUrl: "https://media.s-bol.com/qxj5A4An0ZJ7/1036x1200.jpg",
      quantity: 0,
    ),
    EquipamentModel(
      name: "Notebook Dell",
      imageUrl:
          "https://th.bing.com/th/id/OIP.llixEOL7d5KxeJ7Lic_mJwAAAA?rs=1&pid=ImgDetMain",
      quantity: 3,
    ),
    EquipamentModel(
      name: "Televisor",
      imageUrl: "https://media.s-bol.com/qxj5A4An0ZJ7/1036x1200.jpg",
      quantity: 0,
    ),
  ];

  final List<EquipamentModel> _reservations = [
    EquipamentModel(
      name: "Televisor",
      imageUrl: "https://media.s-bol.com/qxj5A4An0ZJ7/1036x1200.jpg",
      quantity: 0,
    ),
    EquipamentModel(
      name: "Projetor Multimídia",
      imageUrl:
          "https://th.bing.com/th/id/R.a1094c3c56f3110591ec54fc6b9ea01f?rik=fONYfJrv1VWqmg&riu=http%3a%2f%2fi.mlcdn.com.br%2f1500x1500%2fprojetor-benq-ms513pb-2700-lumensresolucao-nativa-800-x-600-usb-hdmi-088206400.jpg&ehk=CmT30eTdbCrkn%2fNvlxzOnwDcLY0ZiSumnRCPu9H6HTc%3d&risl=&pid=ImgRaw&r=0",
      quantity: 5,
    ),
  ];

  final List<EquipamentModel> _solicitacoes = [
    EquipamentModel(
      name: "Notebook Dell",
      imageUrl:
          "https://th.bing.com/th/id/OIP.llixEOL7d5KxeJ7Lic_mJwAAAA?rs=1&pid=ImgDetMain",
      quantity: 3,
    ),
    EquipamentModel(
      name: "Projetor Multimídia",
      imageUrl:
          "https://th.bing.com/th/id/R.a1094c3c56f3110591ec54fc6b9ea01f?rik=fONYfJrv1VWqmg&riu=http%3a%2f%2fi.mlcdn.com.br%2f1500x1500%2fprojetor-benq-ms513pb-2700-lumensresolucao-nativa-800-x-600-usb-hdmi-088206400.jpg&ehk=CmT30eTdbCrkn%2fNvlxzOnwDcLY0ZiSumnRCPu9H6HTc%3d&risl=&pid=ImgRaw&r=0",
      quantity: 5,
    ),
  ];

  List<EquipamentModel> get equipments => _equipments;
  List<EquipamentModel> get reservations => _reservations;
  List<EquipamentModel> get historic => _historic;
  List<EquipamentModel> get solicitacoes => _solicitacoes;
}
