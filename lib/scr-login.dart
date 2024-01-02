import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  const MyHomepage(title: "Flutter Margin and Padding Demo"),
    );
  }
}
class MyHomepage extends StatefulWidget{
  const MyHomepage(
      {Key? key,required this.title}):super(key: key);
  final String title;
  @override
  State<MyHomepage> createState()=> _MyHomePageState();
}
class _MyHomePageState extends State<MyHomepage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 18),
            alignment: const Alignment(-0.8, 1.0),
            child: RichText(
              text: const TextSpan(
                  text: "Hello there!",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(
                        text: "\nWelcome back",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.black,
                            fontWeight: FontWeight.normal
                        )
                    ),
                  ]
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                hintText: "Email",
                contentPadding: EdgeInsets.only(left: 30),
                fillColor: Color.fromARGB(84, 100, 117, 135),
                filled: true,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                hintText: "Password",
                contentPadding: EdgeInsets.only(left: 30),
                fillColor: Color.fromARGB(84, 100, 117, 135),
                filled: true,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width * 0.85,
            padding: const EdgeInsets.only(left: 10),
            child: const Text("Forgot Password?"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 90, bottom: 10),
            width: MediaQuery.of(context).size.width * 0.92,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Color.fromARGB(255, 77, 73, 73),
            ),
            child: const Text(
              "LogIn",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Color.fromARGB(84, 100, 117, 135),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 45),
                  child: Icon(
                    Icons.access_alarm_sharp,
                    size: 22.0,
                  ),
                ),
                Expanded(child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Sign in with Google",
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Color.fromARGB(84, 100, 117, 135),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 45),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 22.0,
                  ),
                ),
                Expanded(child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Sign in with Github",
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                )
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Don't have an account?"),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Sign up here",
                  style: TextStyle(
                      color: Colors.blue
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}