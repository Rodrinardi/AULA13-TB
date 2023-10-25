//o pacote permite criar aplicativos para celular android
//com os Widgets no padrão do sistema orperacional Android
import 'package:flutter/material.dart';

// void main função principla do programa
void main() {
  // Run App é a função que vai chamar a classe MyApp que
  // contém a classe do nosso aplicativo
  runApp(const MyApp());
}
// MyApp é a classe do tipo Stateless é uma classe que não é dinâmica
class MyApp extends StatelessWidget {
  // Construtor da classe MyApp e permite a passagem de parâmetros para a classe
  const MyApp({super.key});

  // This widget is the root of your application.
  @override // Utiliza-se override para sobescrever os comandos de uma função
  //dentro da classe
  // Widget build método que reconstroi a tela toda vez que o app é iniciado
  Widget build(BuildContext context) {
    // return - retorno da classe
    return MaterialApp(
      // Material App faz parte do package Material
      // Home tela principal do aplicativo
      // Scaffold estrutura pré pronta do widget com App bar, body, e Scaffold Bar
      debugShowCheckedModeBanner: false, // remove a faixa debug do aplicativo
      home: Scaffold( 
        // App bar - Barra com título do aplicativo
        appBar: AppBar(
          // title - parâmetro do widget AppBar
          // Text - Tipo de widget para colocar no parâmetro título do Scaffold
          title: Text('Aplicativo Tarefas'),
        ),
        // body - Corpo do Scaffold
        // Column - Tipo de widget que permite colocar elementos na vertical no aplicativo
        body: Column(
          // children - Estabelece uma relação com os widgets que vão na coluna do app
          // children - utilizado para colocar mais de um elementona coluna
          children: [
            //Task - Chama a classe Task e passa como parâmetro o texto e o caminho da imagem
            Task("Aprender Flutter",
                "https://cdn-images-1.medium.com/v2/resize:fit:1024/0*vowtRZE_wvyVA7CB"),
            Task(" Jogar video game",
                "https://a-static.mlcdn.com.br/800x560/console-sony-playstation-5-825gb-marvels-spider-man-2-limited-edition/magazineluiza/237808200/7c0d5369fd416119d04202e4eb5513a0.jpg"),
            Task("Estudar",
                "https://img.imageboss.me/revista-cdn/cdn/6161/2264a8d4f17f8ee3f56155468163979b38eefbbf.jpg?1515696991"),
            Task("Jogar futebol",
                "https://conteudo.imguol.com.br/c/esporte/15/2022/12/18/messi-com-o-trofeu-da-copa-do-mundo-no-qatar-1671394673199_v2_900x506.jpg"),
          ], // Fim do childrem
        ),
      ),
    );
  }
}
// Criamos uma pasta chamada Task que herda da classe Stateless Widgets o Wildget Build
class Task extends StatelessWidget {
  final String tarefa; // Variável do tipo String para pegar o nome da tarefa quando chamar a Task
  final String img; // Variável do tipo String para pegar o caminho/endereço da imagem final
  // final palavra reservada que impede que as variáveis sofram alteração de valores de forma acidental
  //Construtor da classe Task
  // This  utiliza-se para acessar variáveis contida dentro da propria classe
  const Task(this.tarefa, this.img, {super.key});

  @override // Override utilizado para sobescrever funções
  // Widget Build método cahmado para reconstruir a tela toda vez que é chamada
  Widget build(BuildContext context) {
    // Return - retorno da função widget build
    return Container(
      // Criamos um container
      // A cor do container é bramco
      color: Colors.white,
      // Child estabelece relação com apenas um elemento dentro do widget
      child: Stack(
        // Stack utilizado para empilhar Containers
        // childrem estabelece relação com ais de um elemento
        children: [
          // crisa um container azul de altura 140
          Container(color: Colors.blue, height: 140),
          Container( // cria container branco de altura 100
            color: Colors.white,
            height: 100,
            // Child cria relação do container com a linha
            child: Row( // Row cria uma linha no aplicativo
            // mainAxisAlignment - Alinhamento principal do nosso aplicativo
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // spaceBetween é espaço entre os elementos
                                                                 // spaceEvenly é espaço ajustado entre os elementos 
              children: [ // children estabelece relação com ais de um elemento
              // ccriamos um container cinza de 100 de altura e 80 de largura
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: 80,
                  // child estabelece relação do Container com a imagem
                  // Image network image que passamos o caminho da url da internet
                  child: Image.network(
                    img,
                    // fit parâmetro que permite o ajuste da image no container
                    // BoxFit parÂmetro que permite o ajuste da imagem
                    fit: BoxFit.fill,
                  ),
                ),
                // Text - Widget Texto
                // Tarefa - variável que irá receber o nome da tarefa quando a classe for chamada
                Text(
                  tarefa,
                  // Style parâmetro que permite customizar o texto com o parâmetro TextStyle(fontSize - permite ajustar o tamanho da fonte do texto)
                  style: TextStyle(fontSize: 22),
                ),
                // ElevatedButton permite criar um botão no app
                   // onpressed - parâmetro para coocar uma função que é executada quando o botão é pressionado
                ElevatedButton(
                  // onPressed função anônima que é chamada quando o botão é pressionado
                    onPressed: () {
                      print("Botão pressionado");
                    },
                    // Child estabelece a relação entre o botão e o ícone
                    // Icon permite colocar um ícone no botão
                    // Como parâmetro Icon recebe Icons.arrow_drop_up cria o ícone de uma seta no botão
                    child: Icon(Icons.arrow_drop_up)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
