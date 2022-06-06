import 'package:flutter/material.dart';
import 'package:projeto_ecc_flutter/widget/mobile.appbar.dart';
import 'package:projeto_ecc_flutter/widget/web.appbar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({super.key});

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        // Recupera a largura do dispositivo
        var largura_screen = constraint.maxWidth;
        // Recupera a altura de uma appbar
        var altura_appbar = AppBar().preferredSize.height;
        // Recupera a altura do dispositivo
        var altura_screen = constraint.maxHeight;
        return Scaffold(
            /**
             * Aqui é verificado, se a largura do dispositivo for maior que 600,
             * então o appbar será do tipo WebAppBar, caso contrário, será do tipo MobileAppBar
             */
            appBar: largura_screen < 600
                ? PreferredSize(
                    child: MobileAppBar(),
                    preferredSize: Size(largura_screen, altura_appbar),
                  )
                : PreferredSize(
                    child: WebAppBar(),
                    preferredSize: Size(largura_screen, altura_appbar),
                  ));
      },
    );
  }
}
