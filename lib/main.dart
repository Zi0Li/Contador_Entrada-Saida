import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //Criando um Widget Costumizado
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cont = 0;

  void decrement() {
    setState(() {
      cont--;
    });
  }

  void increment() {
    setState(() {
      cont++;
    });
  }

  bool get isEmpty => cont == 0;

  bool get isFull => cont == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/img/3.jpg'),
            fit: BoxFit.cover,
          )),
          child: Column(
            //Coluna (Vertical)
            mainAxisAlignment: MainAxisAlignment.center,
            //Alinha conforme o eixo principal
            children: [
              Text(
                isFull ? 'Lotado!' : 'Pode Entrar',
                style: const TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 4),
              ),
              Padding(
                padding: const EdgeInsets.all(45),
                child: Text(
                  '$cont',
                  style: TextStyle(
                      fontSize: 100, color: isFull ? Colors.red : Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: isEmpty ? null : decrement,
                    style: TextButton.styleFrom(
                        backgroundColor: isEmpty
                            ? Colors.white.withOpacity(0.5)
                            : Colors.white,
                        fixedSize: const Size(100, 100),
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(25))),
                    child: const Text(
                      'Sair',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  TextButton(
                      onPressed: isFull ? null : increment,
                      style: TextButton.styleFrom(
                          backgroundColor: isFull
                              ? Colors.white.withOpacity(0.5)
                              : Colors.white,
                          fixedSize: const Size(100, 100),
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(25))),
                      child: const Text(
                        'Entrar',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}