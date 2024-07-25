import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vitalfon_web/providers/page_provider.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return Positioned(
      right: 20,
      top: 20,
      child: ancho > 900
          ? MouseRegion(
              cursor: SystemMouseCursors.click,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  // width: 550,
                  margin: const EdgeInsets.only(right: 25),
                  height: 50,
                  width: 1000,
                  //color: Colors.blue,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    _ItemsMenu(
                        texto: 'Inicio',
                        onPress: () => pageProvider.goToPage(0),
                        vertical: false),
                    _ItemsMenu(
                        texto: 'Beneficios',
                        onPress: () => pageProvider.goToPage(1),
                        vertical: false),
                    _ItemsMenu(
                        texto: 'Usuarios',
                        onPress: () => pageProvider.goToPage(2),
                        vertical: false),
                    // _ItemsMenu(
                    //     texto: 'Diseño',
                    //     onPress: () => pageProvider.goToPage(3),
                    //     vertical: false),
                    _ItemsMenu(
                        texto: 'Contactanos',
                        onPress: () => pageProvider.goToPage(4),
                        vertical: false),
                  ]),
                  // color: Color.fromARGB(255, 22, 201, 183),
                ),
              ),
            )
          : const _MenuDinamico(),
    );
  }
}

class _MenuDinamico extends StatefulWidget {
  const _MenuDinamico({
    Key? key,
  }) : super(key: key);

  @override
  State<_MenuDinamico> createState() => _MenuDinamicoState();
}

class _MenuDinamicoState extends State<_MenuDinamico>
    with SingleTickerProviderStateMixin {
  bool menuopen = false;
  late AnimationController controler;
  @override
  void initState() {
    super.initState();
    controler = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            if (menuopen) {
              controler.reverse();
            } else {
              controler.forward();
            }
            setState(() {
              menuopen = !menuopen;
            });
          },
          child: Container(
            height: menuopen ? 170 : 40,
            width: 100,

            ///   color: Colors.blue,
            color: menuopen
                ? const Color.fromARGB(255, 213, 226, 213)
                : Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _MenuTitulo(menuopen: menuopen, controler: controler),
                if (menuopen) ...[
                  _ItemsMenu(
                      texto: 'Inicio',
                      onPress: () {
                        pageProvider.goToPage(0);
                      }),
                  const SizedBox(
                    height: 1,
                  ),
                  _ItemsMenu(
                      texto: 'Beneficios',
                      onPress: () => pageProvider.goToPage(1)),
                  const SizedBox(
                    height: 1,
                  ),
                  _ItemsMenu(
                      texto: 'Usuarios',
                      onPress: () => pageProvider.goToPage(2)),
                  const SizedBox(
                    height: 1,
                  ),
                  // _ItemsMenu(
                  //     texto: 'Diseño', onPress: () => pageProvider.goToPage(3)),
                  // const SizedBox(
                  //   height: 1,
                  // ),
                  _ItemsMenu(
                      texto: 'Contactanos',
                      onPress: () => pageProvider.goToPage(4)),
                ]
              ],
            ),
          ),
        ));
  }
}

class _ItemsMenu extends StatefulWidget {
  const _ItemsMenu({
    required this.texto,
    required this.onPress,
    this.vertical = true,
  });
  final String texto;
  final Function onPress;
  final bool vertical;
  @override
  State<_ItemsMenu> createState() => _ItemsMenuState();
}

class _ItemsMenuState extends State<_ItemsMenu> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FadeIn(
      delay: const Duration(milliseconds: 50),
      child: MouseRegion(
        onEnter: (_) => setState(() => isHover = true),
        onExit: (_) => setState(() => isHover = false),
        child: GestureDetector(
          onTap: () => widget.onPress(),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 28,
            width: 130,
            color: isHover
                ? const Color.fromARGB(255, 220, 230, 226)
                : widget.vertical
                    ? Colors.white70
                    : Colors.white70,
            child: Center(
              child: Text(
                widget.texto,
                style: GoogleFonts.robotoSlab(
                    fontSize: widget.vertical ? 15 : 20, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MenuTitulo extends StatelessWidget {
  const _MenuTitulo({
    Key? key,
    required this.menuopen,
    required this.controler,
  }) : super(key: key);

  final bool menuopen;
  final AnimationController controler;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.red,
      width: 200,
      height: 40,
      //  margin: EdgeInsets.only(top: 25),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        AnimatedContainer(
            width: menuopen ? 5 : 0,
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 200)),
        Text('Menu ',
            style: GoogleFonts.robotoSlab(
              fontSize: 15,
            )),
        AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          size: 30,
          progress: controler,
          color: Colors.black,
        )
      ]),
    );
  }
}
