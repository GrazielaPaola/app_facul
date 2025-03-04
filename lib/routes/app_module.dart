import 'package:flutter_modular/flutter_modular.dart';
import 'package:school_reserve/pages/adm/adm_page.dart';
import 'package:school_reserve/pages/adm/solicitacoes/solicitacoes_page.dart';
import 'package:school_reserve/pages/cadastro/cadastro_page.dart';
import 'package:school_reserve/pages/login/login_page.dart';
import 'package:school_reserve/pages/user_list/user_list_pag.dart';

import '../pages/historic/historic_pag.dart';
import '../pages/my_reservations/my_reservations_page.dart';

class AppModule extends Module {
  AppModule();

  @override
  void binds(i) {
    // i.addSingleton<StockViewController>(StockViewController.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (_) => LoginPage(),
    );
    r.child(
      '/cadastro',
      child: (_) => CadastroPage(),
    );

    r.child(
      '/adm',
      child: (_) => AdmPage(),
      transition: TransitionType.rightToLeft,
    );
    r.child(
      '/users',
      child: (_) => UserListPage(),
      transition: TransitionType.rightToLeft,
    );
    r.child(
      "/reservations",
      child: (context) => MyReservationsPage(),
      transition: TransitionType.rightToLeft,
    );
    r.child(
      "/historic",
      child: (context) => HistoricPage(),
      transition: TransitionType.rightToLeft,
    );
    r.child(
      "/solicitacoes",
      child: (context) => SolicitacoesPage(),
      transition: TransitionType.rightToLeft,
    );
  }
}
