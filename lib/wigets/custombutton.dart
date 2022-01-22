import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData? icon;
  final String? lebel;
  final Color? color;
  final VoidCallback? ontap;
  const CustomButton({
    this.icon,
    this.lebel,
    this.color,
    this.ontap,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: color,
        child: InkWell(
          onTap: ontap,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(icon, color: Colors.white,),
                  Text("$lebel")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}