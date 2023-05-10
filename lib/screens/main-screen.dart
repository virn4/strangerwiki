import 'package:flutter/material.dart';

class Episode {
  final String title;
  final String imageUrl;

  Episode({required this.title, required this.imageUrl});
}


 class MySeriesPage extends StatefulWidget {
   MySeriesPage({ Key? key }) : super(key: key);
       List<Episode> episodes = 
       [ 
          Episode(
            title: 'Episódio 1',
            imageUrl: 'https://picsum.photos/id/1/200/300',
          ),
          Episode(
            title: 'Episódio 2',
            imageUrl: 'https://picsum.photos/id/2/200/300',
          ),
          Episode(
            title: 'Episódio 3',
            imageUrl: 'https://picsum.photos/id/1/200/300',
          ),
          Episode(
            title: 'Episódio 4',
            imageUrl: 'https://picsum.photos/id/2/200/300',
          ),
          Episode(
            title: 'Episódio 5',
            imageUrl: 'https://picsum.photos/id/1/200/300',
          ),
          Episode(
            title: 'Episódio 6',
            imageUrl: 'https://picsum.photos/id/2/200/300',
          ),
          Episode(
            title: 'Episódio 7',
            imageUrl: 'https://picsum.photos/id/1/200/300',
          ),
          Episode(
            title: 'Episódio 8',
            imageUrl: 'https://picsum.photos/id/2/200/300',
          ),
          Episode(
            title: 'Episódio 9',
            imageUrl: 'https://picsum.photos/id/2/200/300',
          ),
        ];
        
    
  @override
  _MySeriesPageState createState() => _MySeriesPageState();
}

class _MySeriesPageState extends State<MySeriesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar(

          actions: <Widget>[
          Image.asset('assets/logo.png'),
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
          title: Text('Stranger Wiki'),
          
          bottom: TabBar(
            indicatorColor: Color.fromARGB(255, 255, 49, 49), 
            labelColor: Color.fromARGB(255, 255, 49, 49),
            unselectedLabelColor: Color.fromARGB(255, 255, 255, 255),
            tabs: [
              Tab(text: 'Temporada 1', ),
              Tab(text: 'Temporada 2'),
              Tab(text: 'Temporada 3'),
              Tab(text: 'Temporada 4'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // temporada 1
            
            ListView.builder(
              itemCount: widget.episodes.length, 
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                  },
                   trailing: CircleAvatar(
                    backgroundImage: NetworkImage(widget.episodes[index].imageUrl),
                  ),
                  title: Text(widget.episodes[index].title),
                  
                );
              },
            ),
            // temporada 2
            ListView.builder(
              itemCount: 9, 
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    
                  },
                  title: Text('Episódio ${index+1}'),
                );
              },
            ),
            // temporada 3
            ListView.builder(
              itemCount: 9, 
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    
                  },
                  title: Text('Episódio ${index+1}'),
                );
              },
            ),
            ListView.builder(
              itemCount: 9, 
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    
                  },
                  title: Text('Episódio ${index+1}'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}