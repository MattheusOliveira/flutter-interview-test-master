import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final textButton;
  final textError;
  final VoidCallback onPressed;

  const CustomErrorWidget({this.textButton, this.textError, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(this.textError),
          OutlinedButton(
            onPressed: onPressed,
            child: Text('Tentar novamente'),
          )
        ],
      ),
    );
  }
}
