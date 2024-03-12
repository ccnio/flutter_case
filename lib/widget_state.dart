import 'package:flutter/material.dart';

class WidgetState extends StatelessWidget {
  const WidgetState({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("widget状态")),
      body:  const Column(
          children: [StlWidget(), StfWidget()],
        ),
    ));
  }
}

class StlWidget extends StatelessWidget {
  const StlWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "stl widget",
        textDirection: TextDirection.rtl,
      ),
    );
  }
}

class StfWidget extends StatefulWidget {
  const StfWidget({super.key});

  @override
  State<StfWidget> createState() => _StfWidgetState();
}

class _StfWidgetState extends State<StfWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Text(
            "count = $count",
            textDirection: TextDirection.rtl,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Text("改变 count", textDirection: TextDirection.rtl))
        ],
    );
  }
}
