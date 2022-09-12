import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tree_ved_assignment/config/config.dart';
import 'package:tree_ved_assignment/modules/modules.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const TreeVed());
}

class TreeVed extends StatelessWidget {
  const TreeVed({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tree Ved',
      theme: of(context),
      home: ChangeNotifierProvider<HomeProvider>(
        create: (context) => HomeProvider(),
        child: const HomeScreen(),
      ),
    );
  }
}
