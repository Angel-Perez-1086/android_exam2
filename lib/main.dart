import 'package:flutter/material.dart';
import 'package:perez/pagina_inicial.dart';
import 'package:perez/pagina_timer.dart';
import 'package:perez/pagina_positioned.dart';
import 'package:perez/pagina_show_search.dart';
import 'package:perez/pagina_toggle_button.dart';
import 'package:perez/pagina_fractionally_sizedbox.dart';
import 'package:perez/pagina_platform_detect.dart';
import 'package:perez/pagina_stream_builder.dart';
import 'package:perez/pagina_snack_bar.dart';

void main() => runApp(const MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre páginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla1': (context) => const MyTimer(),
        '/pantalla2': (context) => const MyPositioned(),
        '/pantalla3': (context) => const MyShowSearch(),
        '/pantalla4': (context) => const MyToggleButton(),
        '/pantalla5': (context) => const MyFractionallySizedBox(),
        '/pantalla6': (context) => const MyPlatformDetect(),
        '/pantalla7': (context) => const MyStreamBuilder(),
        '/pantalla8': (context) => const MySnackBar(),
      },
    );
  }
}
