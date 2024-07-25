import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:vitalfon_web/providers/page_provider.dart';
import 'package:vitalfon_web/ui/pages/pie_pagina.dart';
import 'package:vitalfon_web/ui/views/beneficios_view.dart';
import 'package:vitalfon_web/ui/views/contact_view.dart';
import 'package:vitalfon_web/ui/views/home_view.dart';
import 'package:vitalfon_web/ui/views/usuarios_view.dart';

import '../shared/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Stack(
        children: [
          _LogoNombre(),
          _LogoFondo(),
          const _HomeBody(),
          const PiePagina(),
          const Menu(),
        ],
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context);
    return PageView(
        controller: pageProvider.scrollController,
        scrollDirection: Axis.vertical,
        allowImplicitScrolling: true,
        children: const [
          HomeView(),
          BeneView(),
          UsuariosView(),
          //      DisenoView(),
          ContactView(),
        ]);
  }
}

class _LogoNombre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
        fit: BoxFit.contain,
        //alignment: AlignmentGeometry.,
        child: Container(
          margin: const EdgeInsets.only(top: 10, left: 50, right: 50),
          height: 140,
          width: 1000,
          // color: Colors.yellow,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("logo_y_nombre.png"),
                //fit: BoxFit.contain,
              ),
              // Container(
              //   width: 500,
              // ),
            ],
          ),
        ));
  }
}

class _LogoFondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 250,
      right: -260,
      child: FittedBox(
        fit: BoxFit.contain,
        child: SizedBox(
          height: 800,
          width: 1000,
          child: Image(
            image: AssetImage("logo.png"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
