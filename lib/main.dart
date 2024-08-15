import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  MySnakbar(massage, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(massage)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " My App",
          style: TextStyle(
              fontSize: 31, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 180, right: 20, bottom: 20),
          child: Column(
            children: [
              //normal text
              Text(
                "Hello,World!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              // styled text
              Text(
                "Welcome To Flutter",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.pink),
              ),
              Container(
                height: 250,
                width: 250,
                child: Image.network(
                    "https://img.freepik.com/free-vector/www-concept-illustration_114360-2143.jpg?w=740&t=st=1723573380~exp=1723573980~hmac=b227e05028f285a1a319b423ef28dbe70b1ea89a98548edcc18beb53924b08d9"),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  MySnakbar("Wellcome to Next Page", context);
                },
                child: Text(
                  "Next Page",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    minimumSize: Size(200, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
