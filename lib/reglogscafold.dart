library reglogscafold;

import 'package:flutter/material.dart';

class RegisterLoginScafold extends StatelessWidget {
  final Widget child;
  final Widget text;
  final VoidCallback? onTap;
  final Color colorBg;
  final Color iconColor;

  const RegisterLoginScafold({
    Key? key,
    required this.child,
    required this.text,
    this.onTap,
    required this.colorBg,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: text,
        leading: InkWell(
          onTap: onTap,
          child: Icon(
            Icons.arrow_back_ios,
            color: iconColor,
          ),
        ),
        backgroundColor: colorBg,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: colorBg,
        child: child,
      ),
    );
  }
}
