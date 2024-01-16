import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lifecycle_testing/pageone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

// constructor

  const MyApp({super.key});

// build method
  @override
  Widget build(BuildContext context) {
    showToast("stateless-Build");
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

}

class MyHomePage extends StatefulWidget {

  //constructor
  const MyHomePage({super.key, required this.title});
  

  final String title;

// createstate method
  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  void initState() {
    // initState method
    super.initState();
    showToast("initState");
  }

  @override
  void didChangeDependencies() {
    // didChangeDependencies method
    super.didChangeDependencies();
    showToast("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    showToast("stateful-build");
    
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PageOne()));
            }, icon: Icon(Icons.search))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );

    
  }

@override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    // didUpdateWidget method
    super.didUpdateWidget(oldWidget);
    showToast("didUpdateWidget");
  }

  @override
  void setState(VoidCallback fn) {
    // setState method
    super.setState(fn);
    
  }

  @override
  void deactivate() {
    // deactivate method
    super.deactivate();
    showToast("deactivate");
  }

  @override
  void dispose() {
    // dispose method
    super.dispose();
    showToast("dispose");
  }


  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

}
