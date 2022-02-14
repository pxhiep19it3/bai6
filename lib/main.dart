import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flex Demo - CodeFresher'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Flexible(
                child: widget1(),
                flex: 3,
                fit: FlexFit.tight,
              ),
              Container(
                child: const Divider(thickness: 3, color: Colors.green),
              ),
              Flexible(
                child: widget2(),
                flex: 3,
                fit: FlexFit.tight,
              ),
              Container(
                child: const Divider(thickness: 3, color: Colors.green),
              ),
              Flexible(
                child: widget3(),
                flex: 4,
                fit: FlexFit.tight,
              )
            ],
          ),
        ));
  }
}

class widget1 extends StatelessWidget {
  const widget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          "https://codefresher.vn/wp-content/uploads/2022/01/banner_2022_flutter-1024x1024.jpg",
          width: 155,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Lập trình Flutter",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Thực chiến dự án app moblile",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              )
            ],
          ),
        )
      ],
    );
  }
}

class widget2 extends StatelessWidget {
  const widget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Lập trình Android",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Java + Kotlin",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Image.network(
          "https://codefresher.vn/wp-content/uploads/2022/01/banner_2022_android.jpg",
          width: 155,
        ),
      ],
    );
  }
}

class widget3 extends StatelessWidget {
  const widget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          "https://codefresher.vn/wp-content/uploads/2021/06/banner-Java-core-03.png",
          height: 200,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Lập trình Java cơ bản",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Cho người mới bắt đầu",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              )
            ],
          ),
        )
      ],
    );
  }
}
