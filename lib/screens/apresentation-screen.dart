import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 180),
              child: Image.asset('assets/logo.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 80),
            margin: EdgeInsets.only(left: 110, right: 110),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'Olá!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(text: 'Este é um aplicativo direcionado aos fãs da série '),
                      TextSpan(
                        text: 'Stranger Things',
                        style: TextStyle(color: Color.fromARGB(255, 255, 49, 49)),
                      ),
                      TextSpan(text: '. Aqui você pode encontrar informações detalhadas e atualizadas sobre o seriado, como o seu enredo, personagens, elenco, curiosidades e entre outros. Vamos lá?'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 30),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'Você já tem uma conta?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 222, 89),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 200),
            alignment: Alignment.center,
            child: Column(
              children: [
                MaterialButton(onPressed: () {
                  
                },
                color: Color.fromARGB(255, 255, 49, 49),
                textColor: Colors.black,
                child: Icon(Icons.arrow_forward),
                padding: EdgeInsets.all(21),
                shape: CircleBorder(),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
