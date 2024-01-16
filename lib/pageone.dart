import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

@override
  void initState() {
    // initState method
    super.initState();
    showToast("pageone-initState");
  }

  @override
  void didChangeDependencies() {
    // didChangeDependencies method
    super.didChangeDependencies();
    showToast("pageone-didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    showToast("pageone-build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Pageone"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Pageone',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageOne()));
                },
                icon: Icon(Icons.search))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }



 @override
  void didUpdateWidget(covariant PageOne oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    showToast("pageone-didUpdateWidget");
  }

  @override
  void setState(VoidCallback fn) {
    // setState method
    super.setState(fn);
    showToast("pageone-setstate");
  }

  @override
  void deactivate() {
    // deactivate method
    super.deactivate();
    showToast("pageone-deactivate");
  }

  @override
  void dispose() {
    // dispose method
    super.dispose();
    showToast("pageone-dispose");
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