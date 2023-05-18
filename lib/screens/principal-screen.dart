import 'package:flutter/material.dart';


class MyPrincipal extends StatelessWidget {
  const MyPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar(
          title: Container (
            child: Row(
              children: [
                Image.asset('assets/logo.png', width: 100,),
              ],
            ),
          ),
          
          actions: <Widget>[
            Image.asset('assets/icon.png', width: 30,),
                
            IconButton(icon: const  Icon(Icons.search), onPressed: () {
              
            },),
            IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Show Menu',
            onPressed: () {
              ScaffoldMessenger.of(context);
               List<String> menuOptions = [
              'Página principal',
              'Perfil dos personagens',
              'Episódios e temporadas',
              'Configurações',
              'Comunidade' ];
            },)
        ],
        ),
        body: 
          Text(
            "Stranger Wiki"
          ),
        ),
        );
  }
}