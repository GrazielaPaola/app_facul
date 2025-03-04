import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:school_reserve/pages/adm/adm_controller.dart';
import 'package:school_reserve/routes/app_module.dart';

import 'pages/user_list/user_controller.dart';

void main() {
  runApp(
    (MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AdmController()),
        ChangeNotifierProvider(create: (_) => UserController()),
      ],
      child: ModularApp(
        module: AppModule(),
        child: AppWidget(),
      ),
    )),
  );
}

final navigatorKey = GlobalKey<NavigatorState>();

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {}

  @override
  Widget build(BuildContext context) {
    Modular.routerDelegate.setNavigatorKey(navigatorKey);

    return MaterialApp.router(
      title: ' Colégio Vencer Sempre',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        dropdownMenuTheme: DropdownMenuThemeData(
          menuStyle: MenuStyle(
            backgroundColor:
                WidgetStateProperty.all(Colors.white), 
            elevation: WidgetStateProperty.all(2), 
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      routerConfig: Modular.routerConfig,
    );
  }
}
