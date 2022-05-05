import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //111111111111111
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //222222222222222222222222222222222 StatelessWidget 返回值 是 MaterialApp
    return const MaterialApp(
      title: 'Flutter Demo',
      //33333333333333333333333333333 调用 页面
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//4444444444444444444444444444444444 StatefulWidget / StatelessWidget
class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  Widget build(BuildContext context) {
    //555555555555555555555555555555555 页面 返回值 是  Scaffold
    return Scaffold(
      //666666666666666666666666666
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        //666666666666666666666666666666   模块化  调用
        child: myWidget(context), //函数 返回 类型 为 Column
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

//777777777777777777777777777777777777   模块化   定义
  Column myWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('hello world'),
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
