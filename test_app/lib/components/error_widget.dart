import 'package:flutter/material.dart';

class AppError extends StatelessWidget {
  final String errorTxt;
  const AppError({
    super.key,
    required this.errorTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: errorTxt != null && errorTxt.isNotEmpty,
      child: Center(
        child: SizedBox(
          child: Column(
            children: [
              Text(
                errorTxt,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
