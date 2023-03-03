import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> with TickerProviderStateMixin{
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('You won'),
        ),
        body:Center(
            child: Column(
              children: [
                Lottie.asset(
                  'assets/done.json',
                  controller: _controller,
                  onLoaded: (composition) {
                    _controller
                      ..duration = composition.duration
                      ..forward();
                  },
                ),
                const Text('Congratulations You Cracked the App!!!',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16
                  ),
                ),
              ],
            ))
    );
  }
}