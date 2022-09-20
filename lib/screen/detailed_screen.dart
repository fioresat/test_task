import 'package:flutter/material.dart';
import 'package:test_task/screen/widget/screen_arguments.dart';


class DetailedScreen extends StatelessWidget {
  const DetailedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Post Rating ${args.ups.toString()}"),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(args.title, style: const TextStyle(fontSize: 24),),
              const SizedBox(height: 20,),
              Text(args.selftext, style: const TextStyle(fontSize: 18),),
            ],
          ),
        ),
      ),
    );
  }
}
