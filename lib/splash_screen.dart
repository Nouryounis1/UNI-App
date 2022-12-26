import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ibraheem_app/app/modules/home/views/home_view.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int delayAmount = 500;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Get.offAll(HomeView(),
          transition: Transition.fadeIn, duration: const Duration(seconds: 3));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.white,
        child: Lottie.asset('assets/27637-welcome.json'),
      ),
    );
  }
}

class ShowUp extends StatefulWidget {
  final Widget? child;
  final int? delay;

  const ShowUp({@required this.child, this.delay});

  @override
  _ShowUpState createState() => _ShowUpState();
}

class _ShowUpState extends State<ShowUp> with TickerProviderStateMixin {
  AnimationController? _animController;
  Animation<Offset>? _animOffset;

  @override
  void initState() {
    super.initState();

    _animController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _animController!);
    _animOffset =
        Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
            .animate(curve);

    if (widget.delay == null) {
      _animController!.forward();
    } else {
      Timer(Duration(milliseconds: widget.delay!), () {
        _animController!.forward();
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _animController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animController!,
      child: SlideTransition(
        position: _animOffset!,
        child: widget.child,
      ),
    );
  }
}
