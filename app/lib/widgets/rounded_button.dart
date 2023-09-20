import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final bool loading;
  final VoidCallback onTap;
  final String str;
  const RoundedButton(
      {super.key,
      required this.str,
      required this.onTap,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  color: Colors.white,
                )
              : Text(
                  str,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
        ),
      ),
    );
  }
}
