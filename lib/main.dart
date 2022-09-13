import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(18.0),
                child:
                    const Text("BERITA TERBARU", textAlign: TextAlign.center),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  "PERTANDINGAN HARI INI",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(0.0),
                child: Image.asset(
                  'assets/images/ronaldo.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  "Berita utama Cristiano Ronaldo",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(21.0),
                color: Colors.purple,
                width: MediaQuery.of(context).size.width,
                child: const Text("By Iftitah News"),
              )
            ],
          ),
        ),

        const SizedBox(height: 10.0,),

        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue)
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(0.0),
                          child: Image.asset("assets/images/card1.jpg"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text("Chelsea Kembali Incar Cristiano Ronaldo", textAlign: TextAlign.justify,),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Barcelona Jul 18, 22",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,),
                  ),
                )
              ],
            ),
          ),

        const SizedBox(height: 10.0,),

        Container(

          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue)
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(0.0),
                          // child: Image.asset("assets/images/card2.jpeg"),
                          child: Image.asset("assets/images/card2.jpg"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text("Tuchel Dipecat, Chelsea Kejar Cristiano Ronaldo Lagi?", 
                          textAlign: TextAlign.justify,),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "London Des 20, 2022",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,),
                  ),
                )
              ],
            ),
          ),

      ]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}